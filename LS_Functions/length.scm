#lang scheme
(define add1
  (lambda (n)
    (+ n 1)))

(define length
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else (add1 (length (cdr lat)))))))