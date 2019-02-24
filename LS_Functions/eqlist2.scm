#lang scheme

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

(define sub1
  (lambda (n)
    (- n 1)))

(define greater?
  (lambda (m n)
    (cond
      ((zero? m) #f)
      ((zero? n) #t)
      (else (greater? (sub1 m) (sub1 n))))))

(define lesser?
  (lambda (m n)
    (cond
      ((zero? n) #f)
      ((zero? m) #t)
      (else (lesser? (sub1 m) (sub1 n))))))

(define equal?
  (lambda (m n)
    (cond
      ((greater? m n) #f)
      ((lesser? m n) #f)
      (else #t))))

(define equan?
  (lambda (a1 a2)
    (cond
      ((and (number? a1) (number? a2)) (equal? a1 a2))
      ((or (number? a1) (number? a2)) #f)
(else (eq? a1 a2)))))

(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1)
            (null? l2))
       #t)
      ((or (null? l1)
           (null? l2))
       #f)
      ((and (atom? (car l1))
           (atom? (car l2)))
       (and (equan? (car l1)
                    (car l2))
            (eqlist? (cdr l1)
                     (cdr l2))))
      ((or (atom? (car l1))
          (atom? (car l2)))
       #f)
      (else
       (and (eqlist? (car l1)
                     (car l2))
            (eqlist? (cdr l1)
                     (cdr l2)))))))
      