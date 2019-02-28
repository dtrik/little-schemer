#lang scheme
;function to add all numbers in a tup
;using o+
;recursively call addtup till tup is null
;use o+ to add first element of tup to 
;addtup of rest of tup
;eg: (addtup '(5 6 7 8 9)) = 35

(define addtup
  (lambda (tup)
    (cond
      ((null? tup) 0)
      (else (o+ (car tup) (addtup (cdr tup)))))))

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
