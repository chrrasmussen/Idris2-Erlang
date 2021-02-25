module TTImp.WithClause

import Core.Context
import Core.Context.Log
import Core.TT
import TTImp.BindImplicits
import TTImp.TTImp
import TTImp.Elab.Check

import Data.List
import Data.Maybe

%default covering

matchFail : FC -> Core a
matchFail loc = throw (GenericMsg loc "With clause does not match parent")

mutual
  export
  getMatch : (lhs : Bool) -> RawImp -> RawImp ->
             Core (List (String, RawImp))
  getMatch lhs (IBindVar _ n) tm = pure [(n, tm)]
  getMatch lhs (Implicit _ _) tm = pure []

  getMatch lhs (IVar _ (NS ns n)) (IVar loc (NS ns' n'))
      = if n == n' && isParentOf ns' ns then pure [] else matchFail loc
  getMatch lhs (IVar _ (NS ns n)) (IVar loc n')
      = if n == n' then pure [] else matchFail loc
  getMatch lhs (IVar _ n) (IVar loc n')
      = if n == n' then pure [] else matchFail loc
  getMatch lhs (IPi _ c p n arg ret) (IPi loc c' p' n' arg' ret')
      = if c == c' && samePiInfo p p' && n == n'
           then matchAll lhs [(arg, arg'), (ret, ret')]
           else matchFail loc
    where
      samePiInfo : PiInfo RawImp -> PiInfo RawImp -> Bool
      samePiInfo Explicit Explicit = True
      samePiInfo Implicit Implicit = True
      samePiInfo AutoImplicit AutoImplicit = True
      samePiInfo (DefImplicit _) (DefImplicit _) = True
      samePiInfo _ _ = False
  -- TODO: Lam, Let, Case, Local, Update
  getMatch lhs (IApp _ f a) (IApp loc f' a')
      = matchAll lhs [(f, f'), (a, a')]
  getMatch lhs (IAutoApp _ f a) (IAutoApp loc f' a')
      = matchAll lhs [(f, f'), (a, a')]
  getMatch lhs (INamedApp _ f n a) (INamedApp loc f' n' a')
      = if n == n'
           then matchAll lhs [(f, f'), (a, a')]
           else matchFail loc
  getMatch lhs (IWithApp _ f a) (IWithApp loc f' a')
      = matchAll lhs [(f, f'), (a, a')]
  -- On LHS: If there's an implicit in the parent, but not the clause, add the
  -- implicit to the clause. This will propagate the implicit through to the
  -- body
  getMatch True (INamedApp fc f n a) f'
      = matchAll True [(f, f'), (a, a)]
  getMatch True (IAutoApp fc f a) f'
      = matchAll True [(f, f'), (a, a)]
  -- On RHS: Rely on unification to fill in the implicit
  getMatch False (INamedApp fc f n a) f'
      = getMatch False f f
  getMatch False (IAutoApp fc f a) f'
      = getMatch False f f
  -- Can't have an implicit in the clause if there wasn't a matching
  -- implicit in the parent
  getMatch lhs f (INamedApp fc f' n a)
      = matchFail fc
  getMatch lhs f (IAutoApp fc f' a)
      = matchFail fc
  -- Alternatives are okay as long as the alternatives correspond, and
  -- one of them is okay
  getMatch lhs (IAlternative fc _ as) (IAlternative _ _ as')
      = matchAny fc lhs (zip as as')
  getMatch lhs (IAs _ _ _ (UN n) p) (IAs fc _ _ (UN n') p')
      = do ms <- getMatch lhs p p'
           mergeMatches lhs ((n, IBindVar fc n') :: ms)
  getMatch lhs (IAs _ _ _ (UN n) p) p'
      = do ms <- getMatch lhs p p'
           mergeMatches lhs ((n, p') :: ms)
  getMatch lhs (IAs _ _ _ _ p) p' = getMatch lhs p p'
  getMatch lhs p (IAs _ _ _ _ p') = getMatch lhs p p'
  getMatch lhs (IType _) (IType _) = pure []
  getMatch lhs (IPrimVal fc c) (IPrimVal fc' c') =
    if c == c'
    then pure []
    else matchFail fc
  getMatch lhs pat spec = matchFail (getFC pat)

  matchAny : FC -> (lhs : Bool) -> List (RawImp, RawImp) ->
             Core (List (String, RawImp))
  matchAny fc lhs [] = matchFail fc
  matchAny fc lhs ((x, y) :: ms)
      = catch (getMatch lhs x y)
              (\err => matchAny fc lhs ms)

  matchAll : (lhs : Bool) -> List (RawImp, RawImp) ->
             Core (List (String, RawImp))
  matchAll lhs [] = pure []
  matchAll lhs ((x, y) :: ms)
      = do matches <- matchAll lhs ms
           mxy <- getMatch lhs x y
           mergeMatches lhs (mxy ++ matches)

  mergeMatches : (lhs : Bool) -> List (String, RawImp) ->
                 Core (List (String, RawImp))
  mergeMatches lhs [] = pure []
  mergeMatches lhs ((n, tm) :: rest)
      = do rest' <- mergeMatches lhs rest
           case lookup n rest' of
                Nothing => pure ((n, tm) :: rest')
                Just tm' =>
                   do ignore $ getMatch lhs tm tm' -- just need to know it succeeds
                      mergeMatches lhs rest

-- Get the arguments for the rewritten pattern clause of a with by looking
-- up how the argument names matched
getArgMatch : FC -> (side : ElabMode) -> (search : Bool) ->
              (warg : RawImp) -> (matches : List (String, RawImp)) ->
              (arg : Maybe (PiInfo RawImp, Name)) -> RawImp
getArgMatch ploc mode search warg ms Nothing = warg
getArgMatch ploc mode True warg ms (Just (AutoImplicit, nm))
    = case (isUN nm >>= \ n => lookup n ms) of
        Just tm => tm
        Nothing =>
          let arg = ISearch ploc 500 in
          if isJust (isLHS mode)
            then IAs ploc ploc UseLeft nm arg
             else arg
getArgMatch ploc mode search warg ms (Just (_, nm))
    = case (isUN nm >>= \ n => lookup n ms) of
        Just tm => tm
        Nothing =>
          let arg = Implicit ploc True in
           if isJust (isLHS mode)
             then IAs ploc ploc UseLeft nm arg
             else arg

export
getNewLHS : {auto c : Ref Ctxt Defs} ->
            FC -> (drop : Nat) -> NestedNames vars ->
            Name -> List (Maybe (PiInfo RawImp, Name)) ->
            RawImp -> RawImp -> Core RawImp
getNewLHS ploc drop nest wname wargnames lhs_raw patlhs
    = do (mlhs_raw, wrest) <- dropWithArgs drop patlhs

         autoimp <- isUnboundImplicits
         setUnboundImplicits True
         (_, lhs) <- bindNames False lhs_raw
         (_, mlhs) <- bindNames False mlhs_raw
         setUnboundImplicits autoimp

         log "declare.def.clause.with" 20 $ "Parent LHS (with implicits): " ++ show lhs
         log "declare.def.clause.with" 20 $ "Modified LHS (with implicits): " ++ show mlhs

         let (warg :: rest) = reverse wrest
             | _ => throw (GenericMsg ploc "Badly formed 'with' clause")
         log "declare.def.clause.with" 5 $ show lhs ++ " against " ++ show mlhs ++
                 " dropping " ++ show (warg :: rest)
         ms <- getMatch True lhs mlhs
         log "declare.def.clause.with" 5 $ "Matches: " ++ show ms
         let params = map (getArgMatch ploc (InLHS top) False warg ms) wargnames
         log "declare.def.clause.with" 5 $ "Parameters: " ++ show params

         let newlhs = apply (IVar ploc wname) (params ++ rest)
         log "declare.def.clause.with" 5 $ "New LHS: " ++ show newlhs
         pure newlhs
  where
    dropWithArgs : Nat -> RawImp ->
                   Core (RawImp, List RawImp)
    dropWithArgs Z tm = pure (tm, [])
    dropWithArgs (S k) (IApp _ f arg)
        = do (tm, rest) <- dropWithArgs k f
             pure (tm, arg :: rest)
    -- Shouldn't happen if parsed correctly, but there's no guarantee that
    -- inputs come from parsed source so throw an error.
    dropWithArgs _ _ = throw (GenericMsg ploc "Badly formed 'with' clause")

-- Find a 'with' application on the RHS and update it
export
withRHS : {auto c : Ref Ctxt Defs} ->
          FC -> (drop : Nat) -> Name -> List (Maybe (PiInfo RawImp, Name)) ->
          RawImp -> RawImp ->
          Core RawImp
withRHS fc drop wname wargnames tm toplhs
    = wrhs tm
  where
    withApply : FC -> RawImp -> List RawImp -> RawImp
    withApply fc f [] = f
    withApply fc f (a :: as) = withApply fc (IWithApp fc f a) as

    updateWith : FC -> RawImp -> List RawImp -> Core RawImp
    updateWith fc (IWithApp _ f a) ws = updateWith fc f (a :: ws)
    updateWith fc tm []
        = throw (GenericMsg fc "Badly formed 'with' application")
    updateWith fc tm (arg :: args)
        = do log "declare.def.clause.with" 10 $ "With-app: Matching " ++ show toplhs ++ " against " ++ show tm
             ms <- getMatch False toplhs tm
             log "declare.def.clause.with" 10 $ "Result: " ++ show ms
             let newrhs = apply (IVar fc wname)
                                (map (getArgMatch fc InExpr True arg ms) wargnames)
             log "declare.def.clause.with" 10 $ "With args for RHS: " ++ show wargnames
             log "declare.def.clause.with" 10 $ "New RHS: " ++ show newrhs
             pure (withApply fc newrhs args)

    mutual
      wrhs : RawImp -> Core RawImp
      wrhs (IPi fc c p n ty sc)
          = pure $ IPi fc c p n !(wrhs ty) !(wrhs sc)
      wrhs (ILam fc c p n ty sc)
          = pure $ ILam fc c p n !(wrhs ty) !(wrhs sc)
      wrhs (ILet fc lhsFC c n ty val sc)
          = pure $ ILet fc lhsFC c n !(wrhs ty) !(wrhs val) !(wrhs sc)
      wrhs (ICase fc sc ty clauses)
          = pure $ ICase fc !(wrhs sc) !(wrhs ty) !(traverse wrhsC clauses)
      wrhs (ILocal fc decls sc)
          = pure $ ILocal fc decls !(wrhs sc) -- TODO!
      wrhs (IUpdate fc upds tm)
          = pure $ IUpdate fc upds !(wrhs tm) -- TODO!
      wrhs (IApp fc f a)
          = pure $ IApp fc !(wrhs f) !(wrhs a)
      wrhs (IAutoApp fc f a)
          = pure $ IAutoApp fc !(wrhs f) !(wrhs a)
      wrhs (INamedApp fc f n a)
          = pure $ INamedApp fc !(wrhs f) n !(wrhs a)
      wrhs (IWithApp fc f a) = updateWith fc f [a]
      wrhs (IRewrite fc rule tm) = pure $ IRewrite fc !(wrhs rule) !(wrhs tm)
      wrhs (IDelayed fc r tm) = pure $ IDelayed fc r !(wrhs tm)
      wrhs (IDelay fc tm) = pure $ IDelay fc !(wrhs tm)
      wrhs (IForce fc tm) = pure $ IForce fc !(wrhs tm)
      wrhs tm = pure tm

      wrhsC : ImpClause -> Core ImpClause
      wrhsC (PatClause fc lhs rhs) = pure $ PatClause fc lhs !(wrhs rhs)
      wrhsC c = pure c
