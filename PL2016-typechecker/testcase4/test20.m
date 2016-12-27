(* 20. static scoping *)
(* output : -1 *)
let f = let counter = 0
        in proc (x) (set counter = counter + 1; counter) in
let counter = 10 in
let a = (f 0) in
let counter = 20 in
let b = (f 0) in
(a - b)
