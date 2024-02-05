(in-package #:cl-user)

(defpackage #:syscall.test.linux
  (:use #:cl
        #:syscall
        #:syscall.constants
        #:fiveam))

(in-package #:syscall.test.linux)

(def-suite* syscall.test.linux
  :description "Test syscall on Linux (x86_64 or aarch64) platform.")

(test getpid
      (let ((actual (syscall +GETPID+)))
        (is (> actual 0))
        #+allegro
        (is (= actual (excl.osi:getpid)))
        #+sbcl
        (is (= actual (sb-posix:getpid)))))

(test getcwd
      (let ((expected (uiop:getenv "PWD")))
        (cffi:with-foreign-object (buf :char (1+ (length expected)))
          (is (not (zerop (syscall +GETCWD+
                                   (cffi-sys:pointer-address buf)
                                   (1+ (length expected))))))
          (is (string= (cffi:convert-from-foreign buf :string)
                       expected)))))

(test ebadf
      (let ((message "Hello, World!"))
        (cffi:with-foreign-string (buf message)
          (is (= #xfffffffffffffff7
                 (syscall +WRITE+
                          4
                          (cffi-sys:pointer-address buf)
                          (length message)))))))
