(* 18. call ref. with multiple arguments *)
(* output : 6 *)
let x = 1 in
let f = proc (x) proc (y) proc (z)
	(set x = x + (set y = y + 1) + (set z = z + 1)) in
((((f <x>) <x>) <x>); x)
