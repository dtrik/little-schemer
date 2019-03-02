#lang scheme
;check if number is 1
;using sub1
;subtract 1 from n once and check if 0

(define one?
  (lambda (n)
    (cond
      ((zero? n) #f)
      (else (zero? sub1 n)))))

(define sub1
  (lambda (n)
    (- n 1)))
