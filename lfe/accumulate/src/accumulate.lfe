(defmodule accumulate
    (export (accumulate 2)))

(defun accumulate
  ([f (cons head tail)] (cons (funcall f head) (accumulate f tail)))
  ([f '()] '()))
