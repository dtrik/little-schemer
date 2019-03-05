#lang scheme
;function to substitute first instance of atom old with atom new in list of atoms lat
;recursion on subst till lat is null
;if not null, check if first of lat is old, then cons new with rest of lat
;else cons first of lat with subst of rest of lat

(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else (cond
              ((eq? (car lat) old)
               (cons new (cdr lat)))
              (else (cons (car lat)
                          (subst new old
                                 (cdr lat)))))))))
