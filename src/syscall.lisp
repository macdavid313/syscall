;;;; syscall.lisp
(in-package :cl-user)

(defpackage #:syscall
  (:use #:cl)
  #+allegro (:use #:excl)
  (:nicknames #:sc)
  (:export #:syscall0
           #:syscall1
           #:syscall2
           #:syscall3
           #:syscall4
           #:syscall5
           #:syscall6
           #:syscall))

(in-package :syscall)

(deftype usize ()
  #+(or 32bit 32-bit) '(unsigned-byte 32)
  #+(or 64bit 64-bit) '(unsigned-byte 64))

(eval-when (:compile-toplevel)
  (declaim (optimize (speed 3) (safety 0) (space 0))
           (ftype (function (usize)                                     usize) syscall0)
           (ftype (function (usize usize)                               usize) syscall1)
           (ftype (function (usize usize usize)                         usize) syscall2)
           (ftype (function (usize usize usize usize)                   usize) syscall3)
           (ftype (function (usize usize usize usize usize)             usize) syscall4)
           (ftype (function (usize usize usize usize usize usize)       usize) syscall5)
           (ftype (function (usize usize usize usize usize usize usize) usize) syscall6)))

#+allegro
(progn
  (ff:def-foreign-call syscall0 ((sysno :unsigned-nat usize))
    :returning (:unsigned-nat usize)
    :call-direct t
    :arg-checking nil
    #+smp :allow-gc #+smp :always)

  (ff:def-foreign-call syscall1 ((sysno :unsigned-nat usize)
                                 (arg1  :unsigned-nat usize))
    :returning (:unsigned-nat usize)
    :call-direct t
    :arg-checking nil
    #+smp :allow-gc #+smp :always)

  (ff:def-foreign-call syscall2 ((sysno :unsigned-nat usize)
                                 (arg1  :unsigned-nat usize)
                                 (arg2  :unsigned-nat usize))
    :returning (:unsigned-nat usize)
    :call-direct t
    :arg-checking nil
    #+smp :allow-gc #+smp :always)

  (ff:def-foreign-call syscall3 ((sysno :unsigned-nat usize)
                                 (arg1  :unsigned-nat usize)
                                 (arg2  :unsigned-nat usize)
                                 (arg3  :unsigned-nat usize))
    :returning (:unsigned-nat usize)
    :call-direct t
    :arg-checking nil
    #+smp :allow-gc #+smp :always)

  (ff:def-foreign-call syscall4 ((sysno :unsigned-nat usize)
                                 (arg1  :unsigned-nat usize)
                                 (arg2  :unsigned-nat usize)
                                 (arg3  :unsigned-nat usize)
                                 (arg4  :unsigned-nat usize))
    :returning (:unsigned-nat usize)
    :call-direct t
    :arg-checking nil
    #+smp :allow-gc #+smp :always)

  (ff:def-foreign-call syscall5 ((sysno :unsigned-nat usize)
                                 (arg1  :unsigned-nat usize)
                                 (arg2  :unsigned-nat usize)
                                 (arg3  :unsigned-nat usize)
                                 (arg4  :unsigned-nat usize)
                                 (arg5  :unsigned-nat usize))
    :returning (:unsigned-nat usize)
    :call-direct t
    :arg-checking nil
    #+smp :allow-gc #+smp :always)

  (ff:def-foreign-call syscall6 ((sysno :unsigned-nat usize)
                                 (arg1  :unsigned-nat usize)
                                 (arg2  :unsigned-nat usize)
                                 (arg3  :unsigned-nat usize)
                                 (arg4  :unsigned-nat usize)
                                 (arg5  :unsigned-nat usize)
                                 (arg6  :unsigned-nat usize))
    :returning (:unsigned-nat usize)
    :call-direct t
    :arg-checking nil
    #+smp :allow-gc #+smp :always))

#+(and cffi (not allegro))
(progn
  (cffi:defcfun "syscall0" :uintptr
    (sysno :uintptr))

  (cffi:defcfun "syscall1" :uintptr
    (sysno :uintptr)
    (arg1  :uintptr))

  (cffi:defcfun "syscall2" :uintptr
    (sysno :uintptr)
    (arg1  :uintptr)
    (arg2  :uintptr))

  (cffi:defcfun "syscall3" :uintptr
    (sysno :uintptr)
    (arg1  :uintptr)
    (arg2  :uintptr)
    (arg3  :uintptr))

  (cffi:defcfun "syscall4" :uintptr
    (sysno :uintptr)
    (arg1  :uintptr)
    (arg2  :uintptr)
    (arg3  :uintptr)
    (arg4  :uintptr))

  (cffi:defcfun "syscall5" :uintptr
    (sysno :uintptr)
    (arg1  :uintptr)
    (arg2  :uintptr)
    (arg3  :uintptr)
    (arg4  :uintptr)
    (arg5  :uintptr))

  (cffi:defcfun "syscall6" :uintptr
    (sysno :uintptr)
    (arg1  :uintptr)
    (arg2  :uintptr)
    (arg3  :uintptr)
    (arg4  :uintptr)
    (arg5  :uintptr)
    (arg6  :uintptr)))

(defun syscall (sysno &rest args)
  (case (length args)
    (0 (syscall0 sysno))
    (1 (syscall1 sysno (first args)))
    (2 (syscall2 sysno (first args) (second args)))
    (3 (syscall3 sysno (first args) (second args) (third args)))
    (4 (syscall4 sysno (first args) (second args) (third args) (fourth args)))
    (5 (syscall5 sysno (first args) (second args) (third args) (fourth args) (fifth args)))
    (6 (syscall6 sysno (first args) (second args) (third args) (fourth args) (fifth args) (sixth args)))
    (t (error "Too many arguments to syscall"))))

(define-compiler-macro syscall (&whole form sysno &rest args)
  (case (length args)
    (0 `(syscall0 ,sysno))
    (1 `(syscall1 ,sysno ,(first args)))
    (2 `(syscall2 ,sysno ,(first args) ,(second args)))
    (3 `(syscall3 ,sysno ,(first args) ,(second args) ,(third args)))
    (4 `(syscall4 ,sysno ,(first args) ,(second args) ,(third args) ,(fourth args)))
    (5 `(syscall5 ,sysno ,(first args) ,(second args) ,(third args) ,(fourth args) ,(fifth args)))
    (6 `(syscall6 ,sysno ,(first args) ,(second args) ,(third args) ,(fourth args) ,(fifth args) ,(sixth args)))
    (t form)))

(defun unsupported-platform-error ()
  (error "Unsupported platform - syscall currently only supports these platforms:
x86_64-linux, aarch64-linux, aarch64-macos"))

(eval-when (:load-toplevel :execute)
  #+allegro
  (cond ((and (featurep :linux) (featurep :x86-64))
         (load "libsyscall.so"
               :foreign t
               :search-list (asdf:system-relative-pathname "syscall" "lib/x86_64-linux/")))
        ((and (featurep :linux) (featurep :arm64))
         (load "libsyscall.so"
               :foreign t
               :search-list (asdf:system-relative-pathname "syscall" "lib/aarch64-linux/")))
        ((and (featurep :macos) (featurep :arm64))
         (load "libsyscall.dylib"
               :foreign t
               :search-list (asdf:system-relative-pathname "syscall" "lib/aarch64-macos/")))
        (t (unsupported-platform-error)))

  #+(not allegro)
  (progn
    (cond ((and (uiop:featurep :linux) (uiop:featurep :x86-64))
           (push (asdf:system-relative-pathname "syscall" "lib/x86_64-linux/")
                 cffi:*foreign-library-directories*))
          ((and (uiop:featurep :linux) (uiop:featurep :arm64))
           (push (asdf:system-relative-pathname "syscall" "lib/aarch64-linux/")
                 cffi:*foreign-library-directories*))
          ((and (uiop:featurep :darwin) (uiop:featurep :arm64))
           (push (asdf:system-relative-pathname "syscall" "lib/aarch64-macos/")
                 cffi:*foreign-library-directories*))
          (t (unsupported-platform-error)))
    (cffi:load-foreign-library '(:default "libsyscall"))))
