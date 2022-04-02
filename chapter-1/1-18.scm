#lang sicp
(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))
(define (mul x y)
  (define (mul_itr x y product)
    (cond ((= y 0) product)
          ((even? y) (mul_itr (double x) (halve y) product))
          (else (mul_itr x (- y 1) (+ product x)))))
  (mul_itr x y 0))