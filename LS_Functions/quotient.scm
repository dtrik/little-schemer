#lang scheme
(define sub1
  (lambda (n)
    (- n 1)))

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

(define quotient
  (lambda (m n)
    (cond
      ((lesser? m n) 0)
      (else (add1 (quotient (o- m n) n))))))