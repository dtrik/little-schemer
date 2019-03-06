#lang scheme
;function to check if two atoms a1 and a2 are equal
;using equan?
;if both are numbers, equal? on a1 and a2
;if either is number, false
;else eq? on a1 and a2

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
