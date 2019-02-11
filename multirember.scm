#lang scheme
;;function that returns list of atoms 'lat' without any atom 'a'
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