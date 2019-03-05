#lang scheme
;function to substitute first instance of atom o1 or atom o2 with atom new in list of atoms lat
;recursion on subst2 lat is null
;if not null, check if first of lat is o1, then cons new to rest of lat
;else if first of lat is o2, then cons new to rest of lat
;else cons first of lat to subst2 on rest of lat

(define subst2
  (lambda (new o1 o2 lat)
    (cond
      ((null? lat) '())
      (else (cond
              ((eq? o1 (car lat)
                    (cons new (cdr lat))))
              ((eq? o2 (car lat)
                    (cons new (cdr lat))))
              (else (cons (car lat)
                          (subst2 new o1 o2
                                  (cdr lat)))))))))
