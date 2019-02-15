#lang scheme
(define equal?
  (lambda (m n)
    (cond
      ((zero? m)(zero? n))
      ((zero? n) #f)
      (else (equal? (sub1 m) (sub1 n))))))