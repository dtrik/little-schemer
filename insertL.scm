#lang scheme
;insert argument 'new' to the left of argument 'old' in list of atoms argument 'lat'
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
