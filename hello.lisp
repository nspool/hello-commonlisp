
;;;; Learning Common Lisp

;; Based on: http://www.gigamonkeys.com/book/practical-a-simple-database.html
;; stars mean global variables
;; push is a macro

(defvar *db* nil)

(defun hello-world ()
  (format t "Hello, World!"))

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd) (push cd *db*)) 

(defun dump-db ()
  (format t "~{~a:~10t~a~%~}~%" *db*))

