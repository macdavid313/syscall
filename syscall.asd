;;;; syscall.asd
(in-package #:asdf-user)

(defsystem syscall
  :version "0.1.0"
  :license "MIT"
  :author "Tianyu Gu <gty@CLOS.org>"
  :maintainer "Tianyu Gu <gty@CLOS.org>"
  :description "A portable Common Lisp library for making system calls on Unix-like systems."
  :homepage "https://github.com/macdavid313/syscall"
  :bug-tracker "https://github.com/macdavid313/syscall/issues"
  :source-control (:git "https://github.com/macdavid313/syscall.git")
  :depends-on #+allegro () #+(not allegro) (#:cffi)
  :components
  ((:module "src"
    :serial t
    :components ((:file "platform/linux-x86_64/constants"  :if-feature (:and :linux :x86-64))
                 (:file "platform/linux-aarch64/constants" :if-feature (:and :linux :arm64))
                 (:file "platform/macos-aarch64/constants" :if-feature (:and (:or :darwin :macos) :arm64))
                 (:file "syscall")))
   (:module "lib"
    :components ((:static-file "x86_64-linux/libsyscall.so")
                 (:static-file "aarch64-linux/libsyscall.so")
                 (:static-file "aarch64-macos/libsyscall.dylib"))))
  :in-order-to ((test-op (test-op syscall/test))))

(defsystem syscall/test
  :depends-on (#:syscall #:fiveam #:cffi)
  :components
  ((:file "t/syscall" :if-feature (:or (:and :linux :x86-64)
                                       (:and :linux :arm64)
                                       (:and (:or :darwin :macos) :arm64))))
  :perform (test-op (op c) (uiop:symbol-call :fiveam :run-all-tests)))
