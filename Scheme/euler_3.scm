; Project Euler Question 3
; Author: Corentin Pinato
; Date: 24 May 2018
;---------------------------------------------------------------
; The prime factors of 13195 are 5, 7, 13 and 29.
; What is the largest prime factor of the number 600851475143 ?
;---------------------------------------------------------------

(define maximum
    (lambda (xs [lrg 0]) 
        (cond   ((null? xs) lrg)
                ((< lrg (car xs)) (maximum (cdr xs) (car xs)))
                (else (maximum (cdr xs) lrg)))))

(define factor?
    (lambda (x y) 
        (= 0 (modulo x y))))

(define first_factor
    (lambda (x [xs (range 2 (add1 (integer-sqrt x)))]) 
        (cond   ((null? xs) xs)
                ((= 0 (modulo x (car xs))) (list (car xs)))
                (else (first_factor x (cdr xs))))))

(define prime_factors
    (lambda (x) 
        (define factor (first_factor x))
        (cond   ((null? factor) (list x))
                (else (append factor (prime_factors (/ x (car factor))))))))

(define euler_3
    (lambda (x) 
        (maximum (prime_factors x))))

(display (euler_3 600851475143))