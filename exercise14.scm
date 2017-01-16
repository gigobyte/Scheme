(define (a-plus-abs a b)
  ((if (> b 0) + -) a b)
)

;A plus the absolute value of b
;Apparently if statements can return operators
;If b > 0 => a + b
;If b < 0 => a - b (but since b < 0 it becomes a - -b = a + b)
