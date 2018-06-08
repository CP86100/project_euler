;; Project Euler Question 1
;; Author: Corentin Pinato
;; Date: 24 May 2018
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; If we list all the natural numbers below 10 that are 
;; multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;; Find the sum of all the multiples of 3 or 5 below 1000.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define sum
    (lambda (x) 
        (foldl + 0 x)))

(define range
    (lambda (f t)
        (cond ((= f t) (list t))
              (else (cons f (range (+ f 1) t))))))

(define euler_1
    (lambda (x)
        (sum (filter (lambda (a) (or (= (modulo a 3) 0) (= (modulo a 5) 0))) (range 1 x)))))
        
(display (euler_1 1000))