#lang planet neil/sicp

(#%require "../helper.rkt" "exercises.rkt")

; Required for exercise 1.1
(define a 3)
(define b (+ a 1))

(run-test-suite
  (test-suite
    "Chapter 1"
    (test-case
      "Exercise 1.1"
      (define 1-1-expressions
        (list 10
              (+ 5 3 4)
              (- 9 1)
              (/ 6 2)
              (+ (* 2 4) (- 4 6))
              3 ; (define a 3)
              4 ; (define b (+ a 1))
              (+ a b (* a b))
              (= a b)
              (if (and (> b a) (< b (* a b)))
                b a)
              (cond ((= a 4) 6)
                    ((= b 4) (+ 6 7 a))
                    (else 25))
              (+ 2 (if (> b a) b a))
              (* (cond ((> a b) a) ((< a b) b)
                       (else -1)) (+ a 1))))
      (check-true (equal? 1-1 1-1-expressions)))))
