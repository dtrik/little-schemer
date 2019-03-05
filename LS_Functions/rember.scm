#lang scheme
;function to remove atom a from list of atoms lat
;recursion on rember till lat is null
;if not null, check if first of lat is a
;then rest of lat
;else cons first of lat to rember of rest of lat

(define rember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) a) (cdr lat))
      (else (cons (car lat)
                  (rember a (cdr lat)))))))
