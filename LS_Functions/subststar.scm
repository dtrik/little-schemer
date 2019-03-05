#lang scheme
;function to substitute all atom old with atom new in list l
;using atom?
;recursion on subst* till l is null
;if not null, check if first of l is atom
;then check if first of l is old, then cons new to subst* on rest of l
;else cons first of l to subst* on rest of l
;if not atom, cons subst* on first of l to subst* on rest of l

(define subst*
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((atom? (car l))
       (cond
         ((eq? (car l) old)
          (cons new
                (subst* new old (cdr l))))
         (else (cons (car l)
                     (subst* new old (cdr l))))))
      (else (cons (subst* new old (car l))
                  (subst* new old (cdr l)))))))

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
