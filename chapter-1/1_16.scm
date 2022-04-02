#lang sicp
; a*b^n remains constant
(define (square x) (* x x))
(define (exp_iter b n)
  (define (exp product counter a)
    (cond ((= counter 0) a)
          ((even? counter) (exp (square product) (/ counter 2) a))
          (else (exp product (- counter 1) (* product a)))))
  (exp b n 1))