#lang racket

(provide (all-defined-out)
         (all-from-out (planet schematics/schemeunit:3:5))
         (all-from-out (planet schematics/schemeunit:3:5/text-ui)))

(require (planet schematics/schemeunit:3:5)
         (planet schematics/schemeunit:3:5/text-ui))

(define (run-test-suite suite)
  (if (= 0 (run-tests suite))
    (displayln "All tests passed!")
    (displayln "One or more failures :(")))

(define-simple-check (tests-not-needed)
  #t)
