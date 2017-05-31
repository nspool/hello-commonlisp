
;;;; Learning Common Lisp

;; Write a factorial function

(defun factorial (a) 
(if (eq a 1) 
    1 
    (* a (factorial (- a 1)))))


;; Based on: http://www.gigamonkeys.com/book/
;; stars mean global variables
;; push is a macro

(defvar *db* nil)

(defun hello-world ()
  "Standard Hello World function"
  (format t "Hello, World!"))

(defun optional-param (a b &optional (c 3) (d 4))
  (list a b c d))

;; Get the function object using (function optional-param), or #'optional-param

(defun verbose-sum (x y)
  "Sum any two numbers after printing a message."
  (format t "Summing ~d and ~d.~%" x y)
  (+ x y))

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defun add-record (cd) (push cd *db*)) 

(defun dump-db ()
  (format t "~{~a:~10t~a~%~}~%" *db*))

(defun hello-progn ()
  (progn 
    (format t "Hello ")
    (format t "World")))

;; Understanding Lisp Macros
;; Macros make it possible to define new syntax
;;
;; Nb. backquote ` before an expression stops evaluation

(defmacro mywhen (condition &rest body)
  `(if ,condition (progn ,@body)))

(mywhen t
  (hello-progn)
  (hello-progn))