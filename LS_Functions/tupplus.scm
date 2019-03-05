#lang scheme
;function to add two tuples
;using o+
;recursion on tup+ till tup1 or tup2 is null
;if both not null, cons addition of first of tup1 and first of tup2
;to tup+ of rest of tup1 and rest of tup2

(define tup+
  (lambda (tup1 tup2)
    (cond
      ((null? tup1) tup2)
      ((null? tup2) tup1)
      (else (cons (o+ (car tup1) (car tup2))
                  (tup+ (cdr tup1) (cdr tup2)))))))

(define o+
  (lambda (m n)
    (cond
      ((zero? m) n)
      (else (add1 (o+ n (sub1 m)))))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
(- n 1)))                  
