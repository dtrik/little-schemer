#lang scheme
;function to check if atom is member of any of l
;using atom?
;recursion on member* till l is null
;if not null, check if first of l is atom
;then check if a is first of l or member* of rest of l
;else check if a is member* of first of l or rest of l

(define member*
  (lambda (a l)
    (cond
      ((null? l) #f)
      ((atom? (car l))
       (or ((eq? (a (car l))) #t)
           (member* a (cdr l))))
      (else (or (member* a (car l)) (member* a (cdr l)))))))

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))   
