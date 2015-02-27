#lang planet neil/sicp

(#%provide (all-defined)
           (all-from "base.rkt"))
(#%require "base.rkt")

;;; Exercise 1.1 ;;;
(define 1-1
  (list 10 12 8 3 6 3 4 19 #f 4 16 6 16))

;;; Exercise 1.2 ;;;
(define 1-2
  (/ (+ 5 4 (- 2 (- 3 (+ 6 4/5))))
     (* 3 (- 6 2) (- 2 7))))

;;; Exercise 1.3 ;;;
(define (1-3 a b c)
  (if (>= a b)
    (sum-of-squares a (max b c))
    (sum-of-squares b (max a c))))

;;; Exercise 1.4 ;;;
; If b is positive, it will be added to a.
; If b is negative, it will be subtracted from a.
