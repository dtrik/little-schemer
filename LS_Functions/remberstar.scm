#lang scheme
;function to remove all atom a from list l
;using atom?
;recursion on rember* till l is null
;if not null, check if first of l is atom
;if atom, check if first of l is a, then rember* on rest of l
;else cons first of l with rember* on rest of l
;if not atom, cons rember* of first of l with rember* on rest of l

(define rember*
  (lambda (a l)
    (cond
      ((null? a) '())
      ((atom? (car l))
       (cond
         ((eq? a (car l)) (rember* (cdr l)))
         (else (cons (car l) (rember* (cdr l))))))
      (else (cons (rember* (a (car l))
                           (rember* a (cdr l))))))))

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
