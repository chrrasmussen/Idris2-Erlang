# Intermediate representations

The Idris 2 compiler (including the Erlang code generator) has the following intermediate representations:

```
  +-----------+                   
  |   PTerm   | (High-level Idris)
  +-----------+                   
        |                         
        |                         
  +-----------+                   
  |   TTImp   |                   
  +-----------+                   
        |                         
        |                         
  +-----------+                   
  |   Term    | (TT)
  +-----------+                   
        |                         
        |                         
  +-----------+                   
  |   CExp    |------------+      
  +-----------+            |      
        |                  |      
        |                  |      
  +-----------+      +-----------+
  | NamedCExp |      |  Lifted   |
  +-----------+      +-----------+
        |                  |      
        |                  |      
  +-----------+      +-----------+
  |  ErlExpr  |      |    ANF    |
  +-----------+      +-----------+
        |                  |      
        |                  |      
+---------------+    +-----------+
|AbstractFormat |    |  VMCode   |
+---------------+    +-----------+
```

- [`AbstractFormat`](../idris2/src/Compiler/Erlang/IR/AbstractFormat.idr) tries to be a faithful representation of the [Erlang Abstract Format](https://erlang.org/doc/apps/erts/absform.html).
- [`ErlExpr`](../idris2/src/Compiler/Erlang/IR/ErlExpr.idr) is similar to [`NamedCExp`](../idris2/src/Core/CompileExpr.idr) but it include some Erlang-specific functionality.
