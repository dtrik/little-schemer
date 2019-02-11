#lang scheme
;;substitute all atom 'old' with atom 'new' in list of atoms 'lat'
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