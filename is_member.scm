#lang scheme
;check if argument 'a' is a member of atomic list 'lat'
(define member?
  (lambda(a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? a (car lat))
                (member? a (cdr lat)))))))
                
