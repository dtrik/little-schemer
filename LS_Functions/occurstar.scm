#lang scheme

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (n)
    (+ n 1)))

(define sub1
  (lambda (n)
    (- n 1)))

(define o+
  (lambda (m n)
    (cond
      ((zero? m) n)
      (else (add1 (o+ n (sub1 m)))))))

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
          
         