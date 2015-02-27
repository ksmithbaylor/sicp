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

; Required for exercise 1.1
(define a 3)
(define b (+ a 1))

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
