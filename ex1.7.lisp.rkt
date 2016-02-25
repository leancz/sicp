#lang racket

(define (sqrt x)
  (define (average . ns) (/ (apply + ns) (length ns)))
  (define (change-in-precision guess x)
    (- (average guess (/ x guess)) guess ))
  (define (sqrt-iter guess x)
    (let ([delta (change-in-precision guess x)])
      (if (< (abs delta) (/ 0.000000001 guess))
          guess
          (sqrt-iter (+ guess delta) x))))
  (sqrt-iter 1.0 x))