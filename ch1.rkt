#lang racket

; Export everything we define in this file
(provide (all-defined-out))

;;; from the text ;;;

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

;;; Exercise 1.1 ;;;
; dictionary of expressions to the values the will evaluate to
(define 1-1-1 10)
(define 1-1-2 12)
(define 1-1-3 8)
(define 1-1-4 3)
(define 1-1-5 6)
(define 1-1-6 3)
(define 1-1-7 4)
(define 1-1-8 19)
(define 1-1-9 #f)
(define 1-1-10 4)
(define 1-1-11 16)
(define 1-1-12 6)
(define 1-1-13 16)

;;; Exercise 1.2 ;;;
