#lang racket
(define (average . ns) (/ (apply + ns) (length ns)))

(define (change-in-precision guess x)
  ( - (- guess (average guess (/ x guess)))))

(define (sqrt guess x)
  (if (< (abs (change-in-precision guess x)) (/ 0.00000001 guess))
  (+ guess (change-in-precision guess x))
  (sqrt (+ guess (change-in-precision guess x)) x)))