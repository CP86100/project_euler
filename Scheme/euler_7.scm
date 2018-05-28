;; Project Euler Question 7
;; Author: Corentin Pinato
;; Date: 24 May 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
;; What is the 10 001st prime number?
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define prime?
    (lambda (x)
        (cond   ((= x 1) #f)
                ((= x 2) #t)
                ((null? (filter (lambda (a) (= 0 (modulo x a))) (range 2 (add1 (integer;sqrt x))))) #t)
                (else #f))))

(define @
    (lambda (xs i)
        (car (drop xs i))))

(define max_range
    (lambda (x)
        (round (* x (+ (log x) (log (log x)))))))

(define euler_7
    (lambda (x)
        (@ (filter prime? (range 2 (max_range x))) (sub1 x))))

(display (euler_7 10001))
