#lang scheme
;function that returns list of atoms lat without any atom a
;recursion on multirember till lat is null
;if not null, check if first of lat is a, then multirember on rest of lat
;else cons first of lat with multirember on rest of lat

(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      (else
       (cond
         ((eq? a (car lat))
          (multirember a (cdr lat)))
         (else (cons (car lat)
                     (multirember a
                                  (cdr lat)))))))))
