#lang scheme
;check if 'a' is a member of atomic list 'lat'
(define member?
  (lambda(a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? a (car lat))
                (member? a (cdr lat)))))))
                
