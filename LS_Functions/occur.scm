#lang scheme
;function to check number of atom a in list of atoms lat
;using add1
;recursion on occur till lat is null
;if not null, check if first of lat is a, then add1 to
;occur on rest of lat
;else occur on rest of lat

(define occur
  (lambda (a lat)
    (cond
      ((null? lat) 0)
      (else
       (cond
         ((eq? a (car lat) (add1 (occur a (cdr lat)))))
         (else (occur a (cdr lat))))))))

(define add1
  (lambda (n)
    (+ n 1)))
