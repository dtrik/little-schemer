#lang scheme
;function to check if l is list of atoms
;recurssion of lat? till l is null
;if not null, check if first of l is atom, then check lat? of rest of l
;else false

(define lat?
  (lambda(l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))
