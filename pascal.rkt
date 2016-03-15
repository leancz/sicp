#lang racket

(define (row n)
  (if (= n 1)
      '(1)
      (map (lambda (number1 number2)
             (+ number1 number2))
           (append '(0) (row (- n 1)))
           (append (row (- n 1)) '(0)))))


    