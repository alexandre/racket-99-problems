#lang racket

;; P32 (**) Determine the greatest common divisor of two positive integer numbers.
;;     Use Euclid's algorithm.
;;     Example:
;;     * (gcd 36 63)
;;     9

(define (gcd number1 number2)
  (cond
    [(eq? number2 0) number1]
    [else (gcd number2 (modulo number1 number2))]))


(require rackunit)

(check-equal? (gcd 36 63) 9)
(check-equal? (gcd 348 156) 12)