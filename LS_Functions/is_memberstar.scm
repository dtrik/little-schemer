#lang scheme
(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

(define member*
  (lambda (a l)
    (cond
      ((null? l) #f)
      ((atom? (car l))
       (or ((eq? (a (car l))) #t)
           (member* a (cdr l))))
      (else (or (member* a (car l)) (member* a (cdr l)))))))
        