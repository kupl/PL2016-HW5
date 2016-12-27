(* 16. procedure as argument *)
(* output : 3 *)
let sum = proc (x) proc (y) (x + y) in
let inc = proc (x) ((sum x) 1) in
let double = proc (f) proc (x) (f (f x)) in
((double inc) 1)
