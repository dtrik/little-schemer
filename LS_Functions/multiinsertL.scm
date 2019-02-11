#lang scheme
;;insert atom 'new' to left of all atom 'old' in list of atoms 'lat'
(define multiinsertL
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else
       (cond
         ((eq? old (car lat))
          (cons new
                (cons old
                      (multiinsertL new old
                                    (cdr lat)))))
         (else (cons (car lat)
                     (multiinsertL new old
                                   (cdr lat)))))))))