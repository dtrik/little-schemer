#lang scheme
;substitute first instance of atom argument 'o1' or atom argument 'o2' with atom 'new' in list of atoms 'lat'
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
