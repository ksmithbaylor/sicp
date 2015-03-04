#lang planet neil/sicp

(#%provide (all-defined)
           (all-from (planet schematics/schemeunit:3:5))
           (all-from (planet schematics/schemeunit:3:5/text-ui)))

(#%require (planet schematics/schemeunit:3:5)
           (planet schematics/schemeunit:3:5/text-ui))

(define (writeln str)
  (write str)
  (newline))

(define (displayln str)
  (display str)
  (newline))

(define (run-test-suite suite)
  (if (= 0 (run-tests suite))
    (displayln "All tests passed!")
    (displayln "One or more failures :(")))

(define-simple-check (tests-not-needed)
  #t)
