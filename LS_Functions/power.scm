#lang scheme
;function to return nth power of m
;using x (multiply)
;recursion on ^ till n is 0
;if not 0, multiply m with (n-1)th power of m

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

(define ^
  (lambda (m n)
    (cond
      ((zero? n) 1)
      (else (x m (^ m (sub1 n)))))))
