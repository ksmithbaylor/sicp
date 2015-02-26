#lang racket/base

(require "ex-1.1.rkt"
         rackunit
         rackunit/text-ui)

(define ch1-tests
  (test-suite "Tests for chapter 1"
    (test-case "Exercise 1.1"
      (check-equal? (square 2) 4)
      (check-equal? (square 0) 0)
      (check-equal? (square -3) 9))))

(define (run)
  (if (= 0 (run-tests ch1-tests))
    (displayln "All tests passed!")
    (displayln "One or more failures :(")))

(run)
