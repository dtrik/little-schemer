#lang scheme
;check if argument 'l' is list of atoms
(define lat?
  (lambda(l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))
