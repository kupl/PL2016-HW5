(* 8. letrec1 *)
(* output : bool *)
let x = iszero 0 in
  letrec f(x) = if iszero x then 0 else (f (x-1)) + 2 in 
    x
