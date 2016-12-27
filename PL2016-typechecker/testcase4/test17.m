(* 17. recursion with reference *)
(* output : 720 *)
let x = 6 in
letrec factorial(x) =
	proc (y) if iszero x then (set x = y) else (set x = (x - 1); ((factorial <x>) ((x + 1) * y))) in
(((factorial <x>) 1); x)
