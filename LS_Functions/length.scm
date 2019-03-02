#lang scheme
;function to get length of list of atoms
;using add1
;recursion on length till lat is null
;if not null, add1 to length of rest of lat

(define length
  (lambda (lat)
    (cond
      ((null? lat) 0)
      (else (add1 (length (cdr lat)))))))

(define add1
  (lambda (n)
    (+ n 1)))
