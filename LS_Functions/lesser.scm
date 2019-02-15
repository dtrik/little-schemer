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
