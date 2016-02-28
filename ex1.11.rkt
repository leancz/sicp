#lang racket
#! Exercise 1.11.  A function f is defined by the rule that
#! f(n) = n if n<3 and
#! f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n>= 3.
#! Write a procedure that computes f by means of a recursive process.
#! Write a procedure that computes f by means of an iterative process.

(define (f1 n)
  (if (< n 3)
      n
      (+ (f1 (- n 1)) (* 2 (f1 (- n 2))) (* 3 (f1 (- n 3))))))


  
(define (f2 n)
  (if (< n 3)
      n
      (f2-iter 2 1 0 n)))

(define (f2-iter v1 v2 v3 count)
  (if (= count 2)
      v1
      (f2-iter (+ v1 (* 2 v2) (* 3 v3)) v1 v2 (- count 1))))

#! if n == 0 : 0
#! if n == 1 : 1
#! if n == 2 : 2
#! if n == 3 : (2) + (1 * 2) + (0 * 3): 4
#! if n == 4 : (previous, 4) + (2. previous * 2) + (3. previous * 3): 11
#! if n == 5 : (previous, 11) + (2. previous * 2) + (3 previous * 3): 25