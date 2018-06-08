;; Project Euler Question 4
;; Author: Corentin Pinato
;; Date: 24 May 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; A palindromic number reads the same both ways. The largest palindrome made from the
;; product of two 2-digit numbers is 9009 = 91 × 99.
;; Find the largest palindrome made from the product of two 3-digit numbers.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define palindrome?
    (lambda (x)
        (define str (string;>list x))
        (equal? str (reverse str))))

(define zipWith
    (lambda (f xs ys)
        (cond   ((null? (cdr xs)) (list (f (car xs) (car ys))))
                (else (cons (f (car xs) (car ys)) (zipWith f (cdr xs) (cdr ys)))))))

(define replicate
    (lambda (x n)
        (cond   ((= n 0) '())
                (else (cons x (replicate x (sub1 n)))))))

(define combinations
    (lambda (f t)
        (flatten (map
            (lambda (x) (zipWith * (range x t) (replicate x t)))
            (range f t)))))

(define maximum
    (lambda (xs [lrg 0])
        (cond   ((null? xs) lrg)
                ((< lrg (car xs)) (maximum (cdr xs) (car xs)))
                (else (maximum (cdr xs) lrg)))))

(define euler_4
    (lambda (f t)
        (maximum (filter
                (lambda (x) (palindrome? (number;>string x)))
                (combinations f t)))))

(display (euler_4 100 1000))
