(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1)) (* 2 (f-recursive (- n 2))) (* 3 (f-recursive (- n 3))))
  )
)

;(f-recursive 4) => 11

(define (f-iterative n)
  (define (iter a b c n)
    (if (< n 3)
        a
        (iter (+ a (* 2 b) (* 3 c)) a b (- n 1))
    )
  )

  (if (< n 3)
      n
      (iter 2 1 0 n)
  )
)

;(f-iterative 4) => 11
