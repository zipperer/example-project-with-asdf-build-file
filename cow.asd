;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(defpackage :cow-asd
  (:use :cl :asdf))

(in-package :cow-asd)

(defsystem "cow"
  :serial t
  :components ((:file "defpackage")
	       (:file "legs")
	       (:file "tail")
	       (:file "head")))
		      
  


#|
  :components ((:file "head" :depends-on ("package"))
	       (:file "tail" :depends-on ("package"
					  circulation))
	       (:file "package" 
|#
