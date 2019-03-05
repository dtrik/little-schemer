#lang scheme
;function to subtract n from m
;using sub1
;recursion on o- till n is 0
;if n 0, return m
;else subtract 1 from m-(n-1)

(define o-
  (lambda (m n)
    (cond
      ((zero? n) m)
      (else (sub1 (o- m (sub1 n)))))))

(define sub1
  (lambda (n)
    (- n 1)))
