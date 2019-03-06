#lang scheme
;function to check if two lists l1 and l2 are equal
;using atom? and equan?
;recursion on eqlist?
;if l1 and l2 are null, true
;if l1 is null and first of l2 is atom, false
;if only l1 is null, false
;if first of l1 is atom and l2 is null, false
;if l1 and l2 are atoms, true if first of l1 and first of l2
;are equan? and rest of l1 and rest of l2 are eqlist?
;if only first of l1 is atom, false
;if only first of l2 is atom, false
;else true if first of l1 and first of l2 are eqlist? and 
;rest of l1 and rest of l2 are eqlist?
;above sequence can be simplified

(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1)
            (null? l2))
       #t)
      ((and (null? l1)
            (atom? (car l2)))
       #f)
      ((null? l1)
       #f)
      ((and (atom? (car l1))
            (null? l2))
       #f)
      ((and (atom? (car l1))
            (atom? (car l2)))
       (and (equan? (car l1)
                    (car l2))
            (eqlist? (cdr l1)
                     (cdr l2))))
      ((atom? (car l1))
       #f)
      ((null? l2)
       #f)
      ((atom? (car l2))
       #f)
      (else
       (and (eqlist? (car l1)
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
