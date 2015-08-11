(define-module (grains)
  #:export (square total))

(define (square n)
  (expt 2 (1- n)))

(define (total)
  (1- (square 65)))
