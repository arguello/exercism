(defmodule sum-of-multiples
  (export (sum-of-multiples 1)
    (sum-of-multiples 2)))

(defun sum-of-multiples (limit)
  (sum-of-multiples '(3 5) limit))

(defun sum-of-multiples (multiples limit)
  (lists:foldl
    (lambda (x sum)
      (if (any-multiple? multiples x)
        (+ sum x) sum)) 0 (lists:seq 1 (- limit 1))))

(defun any-multiple? (lst multiple)
  (lists:any (lambda (n) (=:= 0 (rem multiple n))) lst))
