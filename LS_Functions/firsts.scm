#lang scheme
;returns first S-expressions from 'l'
;recursively call firsts till l is null
;cons first element of first element of l
;to firsts of l
;eg: (firsts '((a b c) (d e f) (g h i))) = '(a d g)

(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (else (cons (car (car l))
                  (firsts (cdr l)))))))
