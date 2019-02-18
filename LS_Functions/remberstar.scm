#lang scheme
(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

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
         