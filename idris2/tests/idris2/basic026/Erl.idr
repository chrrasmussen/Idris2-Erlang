data ErlList : List Type -> Type where
  Nil : ErlList []
  (::) : x -> ErlList xs -> ErlList (x :: xs)

data IsErlType : Type -> Type where
  ETInteger : IsErlType Integer
  ETString : IsErlType String

data IsErlTypes : List Type -> Type where
  ETErlTypesNil : IsErlTypes []
  ETErlTypesCons : (IsErlType x, IsErlTypes xs) => IsErlTypes (x :: xs)

erlCall : ErlList xs -> {auto prf : IsErlTypes xs} -> ()
erlCall args = ()

foo : ()
foo = erlCall [1,2,3, "foo", "bar", "baz", 4,5,6]
