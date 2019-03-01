#lang scheme
;function to insert atom 'new' to the right of atom 'old' in list of atoms 'lat'
;recursive call till lat is null
;if not null, check if first of lat is old, then cons old to cons of new with rest of lat
;else cons first of lat with recursion on rest of lat

(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else (cond
              ((eq? (car lat) old)
               (cons old (cons new (cdr lat))))
              (else (cons (car lat)
                          (insertR new old
                                   (cdr lat)))))))))
