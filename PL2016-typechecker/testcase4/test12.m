(* 12. scoping2 *)
(* output : 55 *)
let x = 10 in
let f = begin if iszero (1-1) then iszero 0 else 100 end in
let g = proc (x) proc (y) (if iszero x then 5+y else 10+y) in
let y = 15 in 
let h = let x = 5 in x+10 in
  begin
    x + ((g 10) 20) + h
  end
