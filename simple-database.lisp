;;; A mp3 song database
(defvar *db* nil)

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd)
  (push cd *db*))

(defun dump-db ()
  (format t "~{~{~a:~10t~a~%~}~%~}" *db*))

(add-record (make-cd "master of puppets" "metallica" 10 nil))
(add-record (make-cd "nightmare" "a7x" 7 t))
(add-record (make-cd "arte do insulto" "matanza" 9 nil))
(add-record (make-cd "odiosa natureza humana" "matanza" 10 nil))

(dump-db)
