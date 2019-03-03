#lang scheme
;substitute all atom old with atom new in list of atoms lat
;recursion on multisubst till lat is null
;if not null, check if first of lat is old, then cons new
;to multisubst of rest of lat
;else cons first of lat to multisubst of rest of lat

(define multisubst
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else (cond
              ((eq? old (car lat))
               (cons new
                     (multisubst new old
                                 (cdr lat))))
              (else
               (cons (car lat)
                     (multisubst new old
                                 (cdr lat)))))))))
