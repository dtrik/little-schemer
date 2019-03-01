#lang scheme
;function to check if atom a is a member of list of atoms lat
;recursion on member? till lat is null
;if not null, check if a is equal to first of lat or member? of rest of lat

(define member?
  (lambda(a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? a (car lat))
                (member? a (cdr lat)))))))
                
