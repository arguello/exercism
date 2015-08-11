(define-module (point-mutations)
  #:export (hamming-distance))

(define (hamming-distance dna1 dna2)
    (if (equal? (string-length dna1) (string-length dna2))
        (length (filter not (map char=? (string->list dna1) (string->list dna2))))
        (error "Unequal string lengths.")))
