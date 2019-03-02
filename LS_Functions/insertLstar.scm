#lang scheme
;function to insert atom new to left of atom old in l
;using atom?
;recursive call on insertL* till l is null
;if l not null, check if first of l is atom
;if atom, then check if first of l is old
;then cons new to cons of old to insertL* on rest of l
;else, cons first of l to insertL* on rest of l
;if not atom, then cons insertL* on first of l and 
;insertL* on rest of l

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

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))
