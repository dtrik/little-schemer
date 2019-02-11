#lang scheme
;;insert atom 'new' after every atom 'old' in list of atoms 'lat'
(define multiinsertR
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else
       (cond
         ((eq? (car lat) old)
          (cons old
                (cons new
                      (multiinsertR new old
                                    (cdr lat)))))
         (else (cons (car lat)
                     (multiinsertR new old
                                   (cdr lat)))))))))