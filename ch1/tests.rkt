#lang planet neil/sicp

(#%require "../helper.rkt" "exercises.rkt")

(run-test-suite
  (test-suite
    "Chapter 1"

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.1"
               (define a 3)
               (define b (+ a 1))
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
               (check-equal? 1-1 1-1-expressions))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.2"
               (check-equal? 1-2 -74/300))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.3"
               (check-equal? (1-3 1 2 3) 13)
               (check-equal? (1-3 5 5 5) 50)
               (check-equal? (1-3 0 0 0) 0))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.4"
               (check-equal? (a-plus-abs-b 5 3) 8)
               (check-equal? (a-plus-abs-b 5 -3) 8))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.5"
               (tests-not-needed))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.6"
               (tests-not-needed))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.7"
               ; Make sure the 1-7-sqrt is more accurate than the original one
               (check > (- (sqrt 2.25) 1.5)
                        (- (1-7-sqrt 2.25) 1.5)))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.8"
               (check < (- (cube-root 3.375) 1.5)
                        0.001))

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    (test-case "Exercise 1.9"
               (tests-not-needed))

    ))
