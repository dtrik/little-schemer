#lang scheme
;function to check if m is lesser than n
;using sub1
;recursive call on lesser? till m or n becomes zero
;if n becomes zero first then false
;if m becomes zero first then true
;if both zero (equal), first cond is zero? n so false

(define lesser?
  (lambda (m n)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else (lesser? (sub1 m) (sub1 n))))))

(define sub1
  (lambda (n)
    (- n 1)))
