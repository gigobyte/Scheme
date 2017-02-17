(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a) (sum term (next a) next b))
    )
)

(define (simpson-integrate f a b n)
    (define h (/ (- b a) n))
    (define (y k)
        (f (+ a (* k h)))
    )

    (define (get-simpson-term k)
        ; coefficient is 1 if k is 0 or n, 4 on odd, 2 on even
        (* (y k) (cond ((or (= k 0) (= k n)) 1)
                       ((odd? k) 4)
                       (else 2)))
    )

    (* (/ h 3) (sum get-simpson-term 0 (lambda (x) (+ x 1)) n))
)

;(display (simpson-integrate (lambda (x) (* x x x)) 0 1 100))(newline)
;(display (simpson-integrate (lambda (x) (* x x x)) 0 1 1000))
