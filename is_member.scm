#lang scheme
;check if 'a' is a member of list of atoms 'lat'
(define member?
  (lambda(a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? a (car lat))
                (member? a (cdr lat)))))))
                
