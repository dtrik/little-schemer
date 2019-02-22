#lang scheme

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

(define insertL*
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((atom? (car l))
       (cond
         ((eq? old (car l))
          (cons new
                (cons old
                      (insertL* new old (cdr l)))))
         (else (cons (car l)
                     (insertL* new old (cdr l))))))
      (else
       (cons (insertL* new old (car l))
             (insertL* new old (cdr l)))))))