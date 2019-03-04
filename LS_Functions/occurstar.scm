#lang scheme
;function to check number of atom a in list l
;using o+, add1 and atom?
;recursion on occur* till l is null
;if not null, check if first of l is atom
;then check if first of l is a, then add1 to occur* on rest of l
;else occur* on rest of l
;if first of l not atom o+ occur* on first of l to occur* on rest of l 

(define occur*
  (lambda (a l)
    (cond
      ((null? l) 0)
      ((atom? (car l)
       (cond
         ((eq? a (car l))
          (add1 (occur* a (cdr l))))
         (else (occur* a (cdr l))))))
      (else
       (o+ (occur* a (car l)) (occur* a (cdr l)))))))

(define o+
  (lambda (m n)
    (cond
      ((zero? m) n)
      (else (add1 (o+ n (sub1 m)))))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
