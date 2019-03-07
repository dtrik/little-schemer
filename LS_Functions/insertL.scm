#lang scheme
;function to insert atom 'new' to the left of atom 'old' in list of atoms 'lat'
;recursive call till lat is null
;if not null, check if first of lat is old, then cons new with lat
;else cons first of lat with recursion on rest of lat
;eg: (insertL 'king 'kenny '(kenny was a liverpool manager)) = 
;   '(king kenny was a liverpool manager)

(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else (cond
              ((eq? (car lat) old)
               (cons new lat))
              (else (cons (car lat)
                          (insertL new old
                                   (cdr lat)))))))))
