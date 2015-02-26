#lang racket/base

(require "ch1.rkt"
         rackunit
         rackunit/text-ui
         compatibility/mlist)

; Required for exercise 1.1
(define a 3)
(define b (+ a 1))

(define all-tests
  (test-suite
    "Chapter 1"
    (test-case
      "Exercise 1.1"
      (check-equal? 1-1-1 10)
      (check-equal? 1-1-2 (+ 5 3 4))
      (check-equal? 1-1-3 (- 9 1))
      (check-equal? 1-1-4 (/ 6 2))
      (check-equal? 1-1-5 (+ (* 2 4) (- 4 6)))
      (check-equal? 1-1-6 3)
      (check-equal? 1-1-7 4)
      (check-equal? 1-1-8 (+ a b (* a b)))
      (check-equal? 1-1-9 (= a b))
      (check-equal? 1-1-10 (if (and (> b a) (< b (* a b)))
                             b
                             a))
      (check-equal? 1-1-11 (cond ((= a 4) 6)
                                 ((= b 4) (+ 6 7 a))
                                 (else 25)))
      (check-equal? 1-1-12 (+ 2 (if (> b a) b a)))
      (check-equal? 1-1-13 (* (cond ((> a b) a)
                                    ((< a b) b)
                                    (else -1))
                              (+ a 1))))))

; Run all tests
(if (= 0 (run-tests all-tests))
  (displayln "All tests passed!")
  (displayln "One or more failures :("))
