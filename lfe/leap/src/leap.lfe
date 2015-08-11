(defmodule leap
    (export (leap-year 1)))

(defun leap-year (year)
    (flet ((rem-is-zero? (n) (== 0 (rem year n))))
        (and (rem-is-zero? 4)
            (or (not (rem-is-zero? 100))
                (rem-is-zero? 400)))))
