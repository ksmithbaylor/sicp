#lang planet neil/sicp

(#%provide (all-defined))

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (f a)
  (sum-of-squares (+ a 1)
                  (* a 2)))

(define (abs x)
  (if (< x 0)
    (- x)
    x))
