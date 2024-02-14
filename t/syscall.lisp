(in-package #:cl-user)

(defpackage #:syscall.test
  (:use #:cl
        #:syscall
        #:syscall.constants
        #:fiveam))

(in-package #:syscall.test)

(def-suite* syscall.test
  :description "Test syscall on linux-x86_64, linux-aarch64, or macos-aarch64 platforms.")

(test getpid
  (let ((actual (syscall +GETPID+)))
    (is (> actual 0))
    #+allegro
    (is (= actual (excl.osi:getpid)))
    #+sbcl
    (is (= actual (sb-posix:getpid)))))

#+linux
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
