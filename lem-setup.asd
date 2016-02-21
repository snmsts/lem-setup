#-asdf
(require :asdf)

(in-package :cl-user)

(defpackage lem-setup-asd
  (:use :cl :asdf))
(in-package :lem-setup-asd)

(defsystem lem-setup
  :author "SANO Masatoshi"
  :license "MIT"
  :depends-on ()
  :components ()
  :description "")
