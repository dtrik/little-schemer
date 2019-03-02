#lang scheme
;function to multiply m and n
;using o+
;recursion on x till m is zero
;add n to itself m times

(define o+
  (lambda (m n)
    (cond
      ((zero? m) n)
      (else (add1 (o+ n (sub1 m)))))))

(define sub1
  (lambda (n)
    (- n 1)))

(define x
  (lambda (n m)
    (cond
      ((zero? m) 0)
      (else (o+ n (x n (sub1 m)))))))
