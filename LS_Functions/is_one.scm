#lang scheme
(define sub1
  (lambda (n)
    (- n 1)))

(define one?
  (lambda (n)
    (cond
      ((zero? n) #f)
      (else (zero? sub1 n)))))