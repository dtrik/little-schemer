#lang scheme
;function to insert atom new to right of atom old in l
;using atom?
;recursive call on insertR* till l is null
;if l not null, check if first of l is atom
;if atom, check if first of l is old
;then cons old to cons of new to insertR* on rest of l
;else, cons first of l to insertR* on rest of l
;if not atom, then cons insertR* on first of l and 
;insertR* on rest of l

(define insertR*
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((atom? (car l))
       (cond
         ((eq? old (car l))
          (cons old
                (cons new
                      (insertR* new old
                                (cdr l)))))
         (else (cons (car l)
                      (insertR* new old
                                (cdr l))))))
      (else cons (insertR* new old
                           (car l))
            (insertR* new old
                      (cdr l))))))

(define atom?
    (lambda (x)
      (and
       (not (pair? x))
       (not (null? x)))))
