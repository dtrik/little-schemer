#lang scheme
;function to add two nums m and n
;using add1 and sub1
;recursive call on o+ till m is zero
;at each call (m times) add1 to n

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
