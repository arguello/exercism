(defmodule bob
  (export (response-for 1)))

(defun response-for (phrase)
  (cond 
    ((silence? phrase) "Fine. Be that way!")
    ((yelling? phrase) "Whoa, chill out!")
    ((questioning? phrase)  "Sure.")
    ('true "Whatever.")))

(defun silence? (phrase)
  (=:= (re:run (string:strip phrase) "^(\\s)*$") '#(match (#(0 0)))))

(defun yelling? (phrase)
  (andalso (=:= (string:to_upper phrase) phrase)
    (lists:any (lambda (x) (and (=< #\A x #\Z))) phrase)))

(defun questioning? (phrase)
  (=:= (lists:last phrase) #\?))
