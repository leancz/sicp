#lang racket

(define (sqrt guess x)
  (define (average . ns) (/ (apply + ns) (length ns)))
  (define (change-in-precision guess x)
    (- (average guess (/ x guess)) guess ))
  (let ([delta (change-in-precision guess x)])
    (if (< (abs delta) (/ 0.000000001 guess))
        guess
        (sqrt (+ guess delta) x))))