(* 19. recursive call ref. *)
(* output : 4 *)
let x = 3 in
letrec reduce(x) = if iszero x then 1 else (set x = (x-1); (1 + (reduce <x>))) in
((reduce <x>) + x)
