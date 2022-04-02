#lang sicp
;(x/y^2 + 2y) / 3 improve in this manner, y-> approximation, x->whose cube root we are trying to find
;(define (cube x) (* x x x))
;(define (abs x)
;  (if (< x 0) (- x) x))
(define (square x)
  (* x x))

(define (improve guess_x x)
  (/ (+ (* 2 guess_x)
        (/ x (square guess_x)))
     3))

(define (good_enough? guess_x x)
  (= (improve guess_x x)
     guess_x))

(define (cube_root guess_x x)
  (if (good_enough? guess_x x)
      guess_x
      (cube_root (improve guess_x x)
                 x)))

