#lang scheme
;function to get the leftmost atom of l
;using atom?
;recursion on leftmost till first of l is atom
;if atom get first of l

(define leftmost
  (lambda (l)
    (cond
      ((atom? (car l)) (car l))
      (else (leftmost (car l))))))

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
