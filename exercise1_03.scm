(define (square x)
  (* x x)
)

(define (square-sum a b)
  (+ (square a) (square b))
)

(define (get-larger a b)
  (if (> a b) a b)
)

(define (exercise-procedure a b c)
  (if (= a (get-larger a b))
    (square-sum a (get-larger b c))
    (square-sum b (get-larger a c))
  )
)

;(exercise-procedure 1 3 2) => 13
