#lang scheme
;function to check if l is list of atoms
;recursion of lat? till l is null
;if not null, check if first of l is atom, then check lat? of rest of l
;else false
;eg (lat? (1 2 3)) = #t
;   (lat? (1 '(a b) 3))) = #f

(define lat?
  (lambda(l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))
