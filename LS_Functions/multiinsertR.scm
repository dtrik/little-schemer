#lang scheme
;function to insert new to right of all old in lat
;recursion on multinsertR till lat is null
;if not null, check if first of lat is old
;then cons old to cons of new to multiinsertR of rest of lat
;else, cons first of lat to multiinsertR of rest of lat

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
