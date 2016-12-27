(* 13. memory effect1 *)
(* output : 7 *)
let x = 3 in
let y = 5 in
let f = proc (p) (set x = p) in
let g = proc (p) (let y = 10 in y) in
let h = proc (p) proc (q) (set x = p; set y = q) in
  (((h 5) 4);((f 3);((g 2);x+y)))
