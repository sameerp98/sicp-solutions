#lang sicp

(define (f_recur a b c n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        (else (+ (f_recur a b c (- n 1))
                 (* 2 (f_recur a b c (- n 2)))
                 (* 3 (f_recur a b c (- n 3)))))))

(define (f1 n)
  (f_recur 0 1 2 n))

(define (f_itr a b c count)
  (cond ((= count 0) a)
        ((= count 1) b)
        ((= count 2) c)
        (else (f_itr (+ (* 3 a) (* 2 b) c)
                     (+ (* 3 a) (* 5 b) (* 3 c))
                     (+ (* 9 a) (* 9 b) (* 8 c)) (- count 3)))))

(define (f2 n)
  (f_itr 0 1 2 n))

;;writing an implementation that counts only one number in advance

(define (f3 n)
  (define (f_itr a b c count)
    (cond ((< n 3) n)
          ((<= count 0) a)
          (else (f_itr (+ (* 3 c) (* 2 b) a) a b (- count 1)))))
  (f_itr 2 1 0 (- n 2)))