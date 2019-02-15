#lang scheme
(define sub1
  (lambda (n)
    (- n 1)))

(define greater?
  (lambda (m n)
    (cond
      ((zero? m) #f)
      ((zero? n) #t)
      (else (greater? (sub1 m) (sub1 n))))))


               