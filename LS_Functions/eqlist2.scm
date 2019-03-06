#lang scheme
;function to check if two lists l1 and l2 are equal
;simplified using equal?
;using equan?, equal? and atom?
;if l1 and l2 are null, then true
;if only one of l1 or l2 are null, then false,
;else true if first of l1 and first of l2 are equal?
;and rest of l1 and rest of l2 are eqlist?

(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1)
            (null? l2))
       #t)
      ((or (null? l1)
           (null? l2))
       #f)
      (else
       (and (equal? (car l1)
                     (car l2))
            (eqlist? (cdr l1)
                     (cdr l2)))))))

(define equan?
  (lambda (a1 a2)
    (cond
      ((and (number? a1) (number? a2)) (equal? a1 a2))
      ((or (number? a1) (number? a2)) #f)
      (else (eq? a1 a2)))))

(define equal?
  (lambda (m n)
    (cond
      ((greater? m n) #f)
      ((lesser? m n) #f)
      (else #t))))

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


(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

(define sub1
  (lambda (n)
    (- n 1)))
