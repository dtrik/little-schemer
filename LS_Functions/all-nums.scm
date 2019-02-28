#lang scheme
;function to get all the numbers in a list of atoms
;recursively call all-nums till lat is null
;check first element of lat, if number, cons it to 
;all-nums of rest of lat, else all-nums of rest of lat
;eg: (all-nums '(5 a 6 b 7)) = '(5 6 7)

(define all-nums
  (lambda (lat)
    (cond
      ((null? lat) '())
      (else
       (cond
         ((number? (car lat)) (cons (car lat) (all-nums (cdr lat))))
         (else (all-nums (cdr lat))))))))    
