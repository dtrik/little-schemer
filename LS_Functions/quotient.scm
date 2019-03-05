#lang scheme
;function to divide m by n and return quotient
;using o-
;recursion on quotient till m is lesser than n
;if not lesser, subtract n from m and add 1 to quotient
;else 0

(define quotient
  (lambda (m n)
    (cond
      ((lesser? m n) 0)
      (else (add1 (quotient (o- m n) n))))))

(define lesser?
  (lambda (m n)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else (lesser? (sub1 m) (sub1 n))))))

(define o-
  (lambda (m n)
    (cond
      ((zero? n) m)
      (else (sub1 (o- m (sub1 n)))))))

(define sub1
  (lambda (n)
    (- n 1)))
