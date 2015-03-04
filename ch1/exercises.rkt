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


;;; Exercise 1.5 ;;;
; If the interpreter is using applicative-order execution,
; the procedure will never terminate. If the interpreter
; is using normal-order execution, the procedure will
; terminate very quickly and return a value of 0.
;
; This happens because `p` is defined as an infinitely-recursive
; procedure. When all operands are evaluated first before
; evaluating the expression as a whole, the interpreter
; tries to evaluate `(p)` but gets "stuck". When the
; expression is expanded to "thunks" of un-evaluated code,
; the `test` procedure evaluates to 0 and never has to
; evaluate `(p)`.


;;; Exercise 1.6 ;;;
; The program will never terminate. Similar to the previous
; example, since the interpreter uses applicative-order
; execution, it will attempt to evaluate the else-clause
; regardless of the value of the predicate. Since the
; else-clause in this example is a recursive call, the
; interpreter will get "stuck" again in an infinite call
; stack.


;;; Exercise 1.7 ;;;
; Since the interval we define as "good enough" stays constant
; and does not scale with the size of `x`, it is proportionally
; bigger for small numbers, leaving a bigger margin for error.
;
; For example, consider the following examples:
; > (/ (sqrt 2.25) (- (sqrt 2.25) 1.5))
; 195312.99999889117
; > (/ (sqrt 10000) (- (sqrt 10000) 100))
; 392299270.1834477
;
; This means that the result of our procedure applied to 2.25 is
; inaccurate by one part in 195,313, since it is known that the
; square root of 2.25 is 1.5. But the result of our procedure
; applied to 10000 is only inaccurate by one part in 392,299,270,
; since it is known that the square root of 10000 is 100.
;
; To fix this, we can define a procedure that tracks the change
; between each successive guess and declares a guess "good enough"
; when it has changed less than a small fraction of the guess
; itself. Since the fraction is indirectly based on the size of `x`,
; it can be said to scale well and produce more accurate results
; for very small numbers.

(define (1-7-sqrt x)
  (1-7-sqrt-iter 1.0 0.0 x))

(define (1-7-sqrt-iter guess prev-guess x)
  (if (1-7-good-enough? guess prev-guess)
    guess
    (1-7-sqrt-iter (improve guess x) guess x)))

(define (1-7-good-enough? guess prev-guess)
  (> 0.001 (/ guess (- guess prev-guess))))

; This improves the accuracy quite a bit. Using our new function:
; > (/ (1-7-sqrt 2.25) (- (1-7-sqrt 2.25) 1.5))
; 313.00000000000114
; > (/ (1-7-sqrt 10000) (- (1-7-sqrt 10000) 100))
; 1.0416449783088315
;
; The procedure is still more accurate for large numbers, but it is
; orders of magnitude more accurate all around.


;;; Exercise 1.8 ;;;
(define (cube-root x)
  (cube-root-iter 1.0 0.0 x))

(define (cube-root-iter guess prev-guess x)
  (if (1-7-good-enough? guess prev-guess)
    guess
    (cube-root-iter (1-8-improve guess x) guess x)))

(define (1-8-improve guess x)
  (average guess
           (/ (+ (/ x (square guess))
                 guess
                 guess)
              3)))

;;; Exercise 1.9 ;;;
; First
; (define (+ a b)
;   (if (= a 0)
;     b
;     (inc (+ (dec a)
;             b))))
;
; Process
; (+ 4 5)
; (inc (+ 3 5))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
;
; The first procedure is recursive.
;
;
; Second
; (define (+ a b)
;   (if (= a 0)
;     b
;     (+ (dec a)
;        (inc b))))
;
; Process
; (+ 4 5)
; (+ 3 6)
; (+ 2 7)
; (+ 1 8)
; (+ 0 9)
; 9
;
; The second procedure is iterative.
