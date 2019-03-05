#lang scheme
;function to pick nth atom in list of atoms lat 
;using sub1
;recursion on pick till n is 1
;if n is 1, then pick first of lat
;else pick n-1 of rest of lat

(define pick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (car lat))
      (else (pick (sub1 n) (cdr lat))))))

(define sub1
  (lambda (n)
    (- n 1)))
