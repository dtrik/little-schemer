#lang scheme
;insert atom 'new' to the left of atom 'old' in list of atoms 'lat'
(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else (cond
              ((eq? (car lat) old)
               (cons new lat))
              (else (cons (car lat)
                          (insertL new old
                                   (cdr lat)))))))))
