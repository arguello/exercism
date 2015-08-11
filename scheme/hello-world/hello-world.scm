(define-module (hello-world)
  #:export (hello))

(define* (hello #:optional (name "World"))
  (string-concatenate (list "Hello, " name "!")))
