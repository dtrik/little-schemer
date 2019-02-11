#lang scheme
;check if argument is atom
(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
