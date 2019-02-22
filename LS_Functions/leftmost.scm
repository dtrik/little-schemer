#lang scheme
(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

(define leftmost
  (lambda (l)
    (cond
      ((null? l) '())
      (else
       (cond
         ((atom? (car l)) (car l))
         (else (leftmost (car l))))))))
       