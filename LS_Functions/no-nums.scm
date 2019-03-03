#lang scheme
;function to remove all nums from list of atoms
;recursion on no-nums till lat is null
;if not null, check if first of lat is number
;then no-nums on rest of lat
;else cons first of lat to no-nums on rest of lat

(define no-nums
  (lambda (lat)
    (cond
      ((null? lat) '())
      (else (cond
              (number? (car lat)) (no-nums (cdr lat))
              (else (cons (car lat) (no-nums (cdr lat)))))))))
