(defmodule rna-transcription
  (export (to-rna 1)))

(defun dna->rna
  ([#\G] #\C)
  ([#\C] #\G)
  ([#\T] #\A)
  ([#\A] #\U))

(defun to-rna (dna)
  "http://docs.lfe.io/user-guide/data/2.html"
  (lists:map #'dna->rna/1 dna))
