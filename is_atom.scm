#lang scheme
;check if argument x is atom
(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
