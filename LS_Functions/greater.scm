#lang scheme
;function to check which num m is greater than num n 
;using sub1
;recursive call on greater? till m or n becomes zero
;if m becomes zero first then false
;if n becomes zero first then true
;if both zero (equal), first cond is zero? m so false
;eg: (greater 5 6) = #f
;    (greater 6 5) = #t
;    (greater 5 5) = #f

(define greater?
  (lambda (m n)
    (cond
      ((zero? m) #f)
      ((zero? n) #t)
      (else (greater? (sub1 m) (sub1 n))))))

(define sub1
  (lambda (n)
    (- n 1)))
