let x = 1 in
  let f = proc (y) (x+y) in
    let x = iszero 2 in
      (f 3)
