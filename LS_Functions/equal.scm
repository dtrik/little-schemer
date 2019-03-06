#lang scheme
;function to check if two numbers m and n are equal
;using greater? and lesser?
;if m is greater than n, then false
;if m is lesser than n, then false
;else true

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

(define sub1
  (lambda (n)
    (- n 1)))
