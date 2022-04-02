#lang sicp
;(define (* a b)
;  (if (= b 0)
;      0
;      (+ a (* a (- b 1)))))
;we have halve and double
(define (halve x)
   (/ x 2))
(define (double x)
  (+ x x))
; multiplication using double, half
(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (double(* a (halve b))))
        (else (+ a (* a (- b 1))))))
; (* 10 7) is basically 10 + 6*10, 10 + double(10*3), 10 + double (10 + double(10))