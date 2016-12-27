(* 4. simple branch *)
(* output : int *)
let f = proc (x) proc (y) (x+y) in
  if iszero ((f 0) 0) then 0 else 1 
