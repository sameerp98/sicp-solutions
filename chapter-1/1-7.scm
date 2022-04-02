#lang sicp

(define (abs x) 
   (if (< x 0) (- x) x))

(define (square x) 
   (* x x))

(define (avg x y) 
   (/ (+ x y) 2))

(define (improve guess x) 
   (avg (guess (/ x guess))))

(define (good_enough? guess x) 
   (<  (abs (- (square guess) x)) 0.001))

(define (square_iter guess x) 
   (if (good_enough? guess x) 
   guess 
   (square_iter (improve guess x) x)))

(square_iter 1 4)