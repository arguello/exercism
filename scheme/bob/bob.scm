(define-module (bob)
  #:export (response-for))

(define (response-for phrase)
  (cond ((silence? phrase) "Fine. Be that way!")
	((yelling? phrase) "Whoa, chill out!")
	((question? phrase) "Sure.")
	(else "Whatever.")))

(define (silence? phrase)
  (or (string-null? phrase)
      (string-every char-whitespace? phrase)))

(define (yelling? phrase)
  )

(define (question? phrase)
  )
