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

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))
