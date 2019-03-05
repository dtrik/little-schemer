#lang scheme
;function to remove nth atom from list of atoms lat
;using sub1
;recursion on rempick till n is 1
;if n 1, return rest of lat
;else cons first of lat to rempick n-1 on rest of lat

(define rempick
  (lambda (n lat)
    (cond
      ((zero? (sub1 n)) (cdr lat))
      (else (cons (car lat) (rempick (sub1 n) (cdr lat)))))))

(define sub1
  (lambda (n)
    (- n 1)))
