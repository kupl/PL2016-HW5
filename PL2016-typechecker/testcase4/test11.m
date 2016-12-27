(* 11. scoping1 *)
(* output : 10 *)
let x = 11 in
let f = proc (x) (set x = 44) in
let g = proc (x) (x) in
let y = 10 in
let h = proc (y) (x+y;set x = 10) in
  ((f (g 3));((h 10);x))
