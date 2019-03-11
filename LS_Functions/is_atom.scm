#lang scheme
;function to check if x is atom
;checks that x is not a pair (exactly two values) and not null
;eg (atom? 10) = #t
;   (atom? '(a b)) = #f

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
