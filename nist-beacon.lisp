
;;;
;;; Simple example of obtaining randomness from the NIST beacon
;;; 

;;; (cl:in-package #:nspool-lisp)

;;;; TODO: JSON serialization

(ql:quickload "drakma")

;;; Epoch time utility methods
;;; http://lisptips.com/post/11649360174/the-common-lisp-and-unix-epochs

(defvar *unix-epoch-difference*
  (encode-universal-time 0 0 0 1 1 1970 0))

(defun universal-to-unix-time (universal-time)
  (- universal-time *unix-epoch-difference*))

(defun unix-to-universal-time (unix-time)
  (+ unix-time *unix-epoch-difference*))

(defun get-unix-time ()
  (universal-to-unix-time (get-universal-time)))

;;; Constants
(defconstant +http-ok+ 200)

;;; REST API
(defparameter *record-url* "https://beacon.nist.gov/rest/record/")

(defun get-beacon-record () 
 (let ((url (concatenate 'string *record-url* (format nil "~a" (get-unix-time)))))
   (format t "Using: ~a" url)
   (drakma:http-request url)))

(defparameter *test-url* "https://beacon.nist.gov/")

(defun test-https ()
  (drakma:http-request *test-url*))

