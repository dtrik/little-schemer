#lang scheme
;function to insert new to left of all old in lat
;recursion on multinsertL till lat is null
;if not null, check if first of lat is old
;then cons new to cons of old to multiinsertL of rest of lat
;else, cons first of lat to multiinsertL of rest of lat

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
