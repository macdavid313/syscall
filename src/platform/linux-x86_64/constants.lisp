;;;; constants.lisp
;;;; DO NOT MODIFY - this file is automatically generated by gen-platform-constants.lisp
;;;; System call numbers for linux-x86_64, parsed from kernel version 6.7.4
(in-package #:cl-user)

(defpackage syscall.constants
  (:use #:cl)
  (:export
    #:+READ+
    #:+WRITE+
    #:+OPEN+
    #:+CLOSE+
    #:+STAT+
    #:+FSTAT+
    #:+LSTAT+
    #:+POLL+
    #:+LSEEK+
    #:+MMAP+
    #:+MPROTECT+
    #:+MUNMAP+
    #:+BRK+
    #:+RT_SIGACTION+
    #:+RT_SIGPROCMASK+
    #:+RT_SIGRETURN+
    #:+IOCTL+
    #:+PREAD64+
    #:+PWRITE64+
    #:+READV+
    #:+WRITEV+
    #:+ACCESS+
    #:+PIPE+
    #:+SELECT+
    #:+SCHED_YIELD+
    #:+MREMAP+
    #:+MSYNC+
    #:+MINCORE+
    #:+MADVISE+
    #:+SHMGET+
    #:+SHMAT+
    #:+SHMCTL+
    #:+DUP+
    #:+DUP2+
    #:+PAUSE+
    #:+NANOSLEEP+
    #:+GETITIMER+
    #:+ALARM+
    #:+SETITIMER+
    #:+GETPID+
    #:+SENDFILE+
    #:+SOCKET+
    #:+CONNECT+
    #:+ACCEPT+
    #:+SENDTO+
    #:+RECVFROM+
    #:+SENDMSG+
    #:+RECVMSG+
    #:+SHUTDOWN+
    #:+BIND+
    #:+LISTEN+
    #:+GETSOCKNAME+
    #:+GETPEERNAME+
    #:+SOCKETPAIR+
    #:+SETSOCKOPT+
    #:+GETSOCKOPT+
    #:+CLONE+
    #:+FORK+
    #:+VFORK+
    #:+EXECVE+
    #:+EXIT+
    #:+WAIT4+
    #:+KILL+
    #:+UNAME+
    #:+SEMGET+
    #:+SEMOP+
    #:+SEMCTL+
    #:+SHMDT+
    #:+MSGGET+
    #:+MSGSND+
    #:+MSGRCV+
    #:+MSGCTL+
    #:+FCNTL+
    #:+FLOCK+
    #:+FSYNC+
    #:+FDATASYNC+
    #:+TRUNCATE+
    #:+FTRUNCATE+
    #:+GETDENTS+
    #:+GETCWD+
    #:+CHDIR+
    #:+FCHDIR+
    #:+RENAME+
    #:+MKDIR+
    #:+RMDIR+
    #:+CREAT+
    #:+LINK+
    #:+UNLINK+
    #:+SYMLINK+
    #:+READLINK+
    #:+CHMOD+
    #:+FCHMOD+
    #:+CHOWN+
    #:+FCHOWN+
    #:+LCHOWN+
    #:+UMASK+
    #:+GETTIMEOFDAY+
    #:+GETRLIMIT+
    #:+GETRUSAGE+
    #:+SYSINFO+
    #:+TIMES+
    #:+PTRACE+
    #:+GETUID+
    #:+SYSLOG+
    #:+GETGID+
    #:+SETUID+
    #:+SETGID+
    #:+GETEUID+
    #:+GETEGID+
    #:+SETPGID+
    #:+GETPPID+
    #:+GETPGRP+
    #:+SETSID+
    #:+SETREUID+
    #:+SETREGID+
    #:+GETGROUPS+
    #:+SETGROUPS+
    #:+SETRESUID+
    #:+GETRESUID+
    #:+SETRESGID+
    #:+GETRESGID+
    #:+GETPGID+
    #:+SETFSUID+
    #:+SETFSGID+
    #:+GETSID+
    #:+CAPGET+
    #:+CAPSET+
    #:+RT_SIGPENDING+
    #:+RT_SIGTIMEDWAIT+
    #:+RT_SIGQUEUEINFO+
    #:+RT_SIGSUSPEND+
    #:+SIGALTSTACK+
    #:+UTIME+
    #:+MKNOD+
    #:+USELIB+
    #:+PERSONALITY+
    #:+USTAT+
    #:+STATFS+
    #:+FSTATFS+
    #:+SYSFS+
    #:+GETPRIORITY+
    #:+SETPRIORITY+
    #:+SCHED_SETPARAM+
    #:+SCHED_GETPARAM+
    #:+SCHED_SETSCHEDULER+
    #:+SCHED_GETSCHEDULER+
    #:+SCHED_GET_PRIORITY_MAX+
    #:+SCHED_GET_PRIORITY_MIN+
    #:+SCHED_RR_GET_INTERVAL+
    #:+MLOCK+
    #:+MUNLOCK+
    #:+MLOCKALL+
    #:+MUNLOCKALL+
    #:+VHANGUP+
    #:+MODIFY_LDT+
    #:+PIVOT_ROOT+
    #:+_SYSCTL+
    #:+PRCTL+
    #:+ARCH_PRCTL+
    #:+ADJTIMEX+
    #:+SETRLIMIT+
    #:+CHROOT+
    #:+SYNC+
    #:+ACCT+
    #:+SETTIMEOFDAY+
    #:+MOUNT+
    #:+UMOUNT2+
    #:+SWAPON+
    #:+SWAPOFF+
    #:+REBOOT+
    #:+SETHOSTNAME+
    #:+SETDOMAINNAME+
    #:+IOPL+
    #:+IOPERM+
    #:+CREATE_MODULE+
    #:+INIT_MODULE+
    #:+DELETE_MODULE+
    #:+GET_KERNEL_SYMS+
    #:+QUERY_MODULE+
    #:+QUOTACTL+
    #:+NFSSERVCTL+
    #:+GETPMSG+
    #:+PUTPMSG+
    #:+AFS_SYSCALL+
    #:+TUXCALL+
    #:+SECURITY+
    #:+GETTID+
    #:+READAHEAD+
    #:+SETXATTR+
    #:+LSETXATTR+
    #:+FSETXATTR+
    #:+GETXATTR+
    #:+LGETXATTR+
    #:+FGETXATTR+
    #:+LISTXATTR+
    #:+LLISTXATTR+
    #:+FLISTXATTR+
    #:+REMOVEXATTR+
    #:+LREMOVEXATTR+
    #:+FREMOVEXATTR+
    #:+TKILL+
    #:+TIME+
    #:+FUTEX+
    #:+SCHED_SETAFFINITY+
    #:+SCHED_GETAFFINITY+
    #:+SET_THREAD_AREA+
    #:+IO_SETUP+
    #:+IO_DESTROY+
    #:+IO_GETEVENTS+
    #:+IO_SUBMIT+
    #:+IO_CANCEL+
    #:+GET_THREAD_AREA+
    #:+LOOKUP_DCOOKIE+
    #:+EPOLL_CREATE+
    #:+EPOLL_CTL_OLD+
    #:+EPOLL_WAIT_OLD+
    #:+REMAP_FILE_PAGES+
    #:+GETDENTS64+
    #:+SET_TID_ADDRESS+
    #:+RESTART_SYSCALL+
    #:+SEMTIMEDOP+
    #:+FADVISE64+
    #:+TIMER_CREATE+
    #:+TIMER_SETTIME+
    #:+TIMER_GETTIME+
    #:+TIMER_GETOVERRUN+
    #:+TIMER_DELETE+
    #:+CLOCK_SETTIME+
    #:+CLOCK_GETTIME+
    #:+CLOCK_GETRES+
    #:+CLOCK_NANOSLEEP+
    #:+EXIT_GROUP+
    #:+EPOLL_WAIT+
    #:+EPOLL_CTL+
    #:+TGKILL+
    #:+UTIMES+
    #:+VSERVER+
    #:+MBIND+
    #:+SET_MEMPOLICY+
    #:+GET_MEMPOLICY+
    #:+MQ_OPEN+
    #:+MQ_UNLINK+
    #:+MQ_TIMEDSEND+
    #:+MQ_TIMEDRECEIVE+
    #:+MQ_NOTIFY+
    #:+MQ_GETSETATTR+
    #:+KEXEC_LOAD+
    #:+WAITID+
    #:+ADD_KEY+
    #:+REQUEST_KEY+
    #:+KEYCTL+
    #:+IOPRIO_SET+
    #:+IOPRIO_GET+
    #:+INOTIFY_INIT+
    #:+INOTIFY_ADD_WATCH+
    #:+INOTIFY_RM_WATCH+
    #:+MIGRATE_PAGES+
    #:+OPENAT+
    #:+MKDIRAT+
    #:+MKNODAT+
    #:+FCHOWNAT+
    #:+FUTIMESAT+
    #:+NEWFSTATAT+
    #:+UNLINKAT+
    #:+RENAMEAT+
    #:+LINKAT+
    #:+SYMLINKAT+
    #:+READLINKAT+
    #:+FCHMODAT+
    #:+FACCESSAT+
    #:+PSELECT6+
    #:+PPOLL+
    #:+UNSHARE+
    #:+SET_ROBUST_LIST+
    #:+GET_ROBUST_LIST+
    #:+SPLICE+
    #:+TEE+
    #:+SYNC_FILE_RANGE+
    #:+VMSPLICE+
    #:+MOVE_PAGES+
    #:+UTIMENSAT+
    #:+EPOLL_PWAIT+
    #:+SIGNALFD+
    #:+TIMERFD_CREATE+
    #:+EVENTFD+
    #:+FALLOCATE+
    #:+TIMERFD_SETTIME+
    #:+TIMERFD_GETTIME+
    #:+ACCEPT4+
    #:+SIGNALFD4+
    #:+EVENTFD2+
    #:+EPOLL_CREATE1+
    #:+DUP3+
    #:+PIPE2+
    #:+INOTIFY_INIT1+
    #:+PREADV+
    #:+PWRITEV+
    #:+RT_TGSIGQUEUEINFO+
    #:+PERF_EVENT_OPEN+
    #:+RECVMMSG+
    #:+FANOTIFY_INIT+
    #:+FANOTIFY_MARK+
    #:+PRLIMIT64+
    #:+NAME_TO_HANDLE_AT+
    #:+OPEN_BY_HANDLE_AT+
    #:+CLOCK_ADJTIME+
    #:+SYNCFS+
    #:+SENDMMSG+
    #:+SETNS+
    #:+GETCPU+
    #:+PROCESS_VM_READV+
    #:+PROCESS_VM_WRITEV+
    #:+KCMP+
    #:+FINIT_MODULE+
    #:+SCHED_SETATTR+
    #:+SCHED_GETATTR+
    #:+RENAMEAT2+
    #:+SECCOMP+
    #:+GETRANDOM+
    #:+MEMFD_CREATE+
    #:+KEXEC_FILE_LOAD+
    #:+BPF+
    #:+EXECVEAT+
    #:+USERFAULTFD+
    #:+MEMBARRIER+
    #:+MLOCK2+
    #:+COPY_FILE_RANGE+
    #:+PREADV2+
    #:+PWRITEV2+
    #:+PKEY_MPROTECT+
    #:+PKEY_ALLOC+
    #:+PKEY_FREE+
    #:+STATX+
    #:+IO_PGETEVENTS+
    #:+RSEQ+
    #:+PIDFD_SEND_SIGNAL+
    #:+IO_URING_SETUP+
    #:+IO_URING_ENTER+
    #:+IO_URING_REGISTER+
    #:+OPEN_TREE+
    #:+MOVE_MOUNT+
    #:+FSOPEN+
    #:+FSCONFIG+
    #:+FSMOUNT+
    #:+FSPICK+
    #:+PIDFD_OPEN+
    #:+CLONE3+
    #:+CLOSE_RANGE+
    #:+OPENAT2+
    #:+PIDFD_GETFD+
    #:+FACCESSAT2+
    #:+PROCESS_MADVISE+
    #:+EPOLL_PWAIT2+
    #:+MOUNT_SETATTR+
    #:+QUOTACTL_FD+
    #:+LANDLOCK_CREATE_RULESET+
    #:+LANDLOCK_ADD_RULE+
    #:+LANDLOCK_RESTRICT_SELF+
    #:+MEMFD_SECRET+
    #:+PROCESS_MRELEASE+
    #:+FUTEX_WAITV+
    #:+SET_MEMPOLICY_HOME_NODE+
    #:+CACHESTAT+
    #:+FCHMODAT2+
    #:+MAP_SHADOW_STACK+
    #:+FUTEX_WAKE+
    #:+FUTEX_WAIT+
    #:+FUTEX_REQUEUE+))

(in-package #:syscall.constants)

(defconstant +READ+ 0)
(defconstant +WRITE+ 1)
(defconstant +OPEN+ 2)
(defconstant +CLOSE+ 3)
(defconstant +STAT+ 4)
(defconstant +FSTAT+ 5)
(defconstant +LSTAT+ 6)
(defconstant +POLL+ 7)
(defconstant +LSEEK+ 8)
(defconstant +MMAP+ 9)
(defconstant +MPROTECT+ 10)
(defconstant +MUNMAP+ 11)
(defconstant +BRK+ 12)
(defconstant +RT_SIGACTION+ 13)
(defconstant +RT_SIGPROCMASK+ 14)
(defconstant +RT_SIGRETURN+ 15)
(defconstant +IOCTL+ 16)
(defconstant +PREAD64+ 17)
(defconstant +PWRITE64+ 18)
(defconstant +READV+ 19)
(defconstant +WRITEV+ 20)
(defconstant +ACCESS+ 21)
(defconstant +PIPE+ 22)
(defconstant +SELECT+ 23)
(defconstant +SCHED_YIELD+ 24)
(defconstant +MREMAP+ 25)
(defconstant +MSYNC+ 26)
(defconstant +MINCORE+ 27)
(defconstant +MADVISE+ 28)
(defconstant +SHMGET+ 29)
(defconstant +SHMAT+ 30)
(defconstant +SHMCTL+ 31)
(defconstant +DUP+ 32)
(defconstant +DUP2+ 33)
(defconstant +PAUSE+ 34)
(defconstant +NANOSLEEP+ 35)
(defconstant +GETITIMER+ 36)
(defconstant +ALARM+ 37)
(defconstant +SETITIMER+ 38)
(defconstant +GETPID+ 39)
(defconstant +SENDFILE+ 40)
(defconstant +SOCKET+ 41)
(defconstant +CONNECT+ 42)
(defconstant +ACCEPT+ 43)
(defconstant +SENDTO+ 44)
(defconstant +RECVFROM+ 45)
(defconstant +SENDMSG+ 46)
(defconstant +RECVMSG+ 47)
(defconstant +SHUTDOWN+ 48)
(defconstant +BIND+ 49)
(defconstant +LISTEN+ 50)
(defconstant +GETSOCKNAME+ 51)
(defconstant +GETPEERNAME+ 52)
(defconstant +SOCKETPAIR+ 53)
(defconstant +SETSOCKOPT+ 54)
(defconstant +GETSOCKOPT+ 55)
(defconstant +CLONE+ 56)
(defconstant +FORK+ 57)
(defconstant +VFORK+ 58)
(defconstant +EXECVE+ 59)
(defconstant +EXIT+ 60)
(defconstant +WAIT4+ 61)
(defconstant +KILL+ 62)
(defconstant +UNAME+ 63)
(defconstant +SEMGET+ 64)
(defconstant +SEMOP+ 65)
(defconstant +SEMCTL+ 66)
(defconstant +SHMDT+ 67)
(defconstant +MSGGET+ 68)
(defconstant +MSGSND+ 69)
(defconstant +MSGRCV+ 70)
(defconstant +MSGCTL+ 71)
(defconstant +FCNTL+ 72)
(defconstant +FLOCK+ 73)
(defconstant +FSYNC+ 74)
(defconstant +FDATASYNC+ 75)
(defconstant +TRUNCATE+ 76)
(defconstant +FTRUNCATE+ 77)
(defconstant +GETDENTS+ 78)
(defconstant +GETCWD+ 79)
(defconstant +CHDIR+ 80)
(defconstant +FCHDIR+ 81)
(defconstant +RENAME+ 82)
(defconstant +MKDIR+ 83)
(defconstant +RMDIR+ 84)
(defconstant +CREAT+ 85)
(defconstant +LINK+ 86)
(defconstant +UNLINK+ 87)
(defconstant +SYMLINK+ 88)
(defconstant +READLINK+ 89)
(defconstant +CHMOD+ 90)
(defconstant +FCHMOD+ 91)
(defconstant +CHOWN+ 92)
(defconstant +FCHOWN+ 93)
(defconstant +LCHOWN+ 94)
(defconstant +UMASK+ 95)
(defconstant +GETTIMEOFDAY+ 96)
(defconstant +GETRLIMIT+ 97)
(defconstant +GETRUSAGE+ 98)
(defconstant +SYSINFO+ 99)
(defconstant +TIMES+ 100)
(defconstant +PTRACE+ 101)
(defconstant +GETUID+ 102)
(defconstant +SYSLOG+ 103)
(defconstant +GETGID+ 104)
(defconstant +SETUID+ 105)
(defconstant +SETGID+ 106)
(defconstant +GETEUID+ 107)
(defconstant +GETEGID+ 108)
(defconstant +SETPGID+ 109)
(defconstant +GETPPID+ 110)
(defconstant +GETPGRP+ 111)
(defconstant +SETSID+ 112)
(defconstant +SETREUID+ 113)
(defconstant +SETREGID+ 114)
(defconstant +GETGROUPS+ 115)
(defconstant +SETGROUPS+ 116)
(defconstant +SETRESUID+ 117)
(defconstant +GETRESUID+ 118)
(defconstant +SETRESGID+ 119)
(defconstant +GETRESGID+ 120)
(defconstant +GETPGID+ 121)
(defconstant +SETFSUID+ 122)
(defconstant +SETFSGID+ 123)
(defconstant +GETSID+ 124)
(defconstant +CAPGET+ 125)
(defconstant +CAPSET+ 126)
(defconstant +RT_SIGPENDING+ 127)
(defconstant +RT_SIGTIMEDWAIT+ 128)
(defconstant +RT_SIGQUEUEINFO+ 129)
(defconstant +RT_SIGSUSPEND+ 130)
(defconstant +SIGALTSTACK+ 131)
(defconstant +UTIME+ 132)
(defconstant +MKNOD+ 133)
(defconstant +USELIB+ 134)
(defconstant +PERSONALITY+ 135)
(defconstant +USTAT+ 136)
(defconstant +STATFS+ 137)
(defconstant +FSTATFS+ 138)
(defconstant +SYSFS+ 139)
(defconstant +GETPRIORITY+ 140)
(defconstant +SETPRIORITY+ 141)
(defconstant +SCHED_SETPARAM+ 142)
(defconstant +SCHED_GETPARAM+ 143)
(defconstant +SCHED_SETSCHEDULER+ 144)
(defconstant +SCHED_GETSCHEDULER+ 145)
(defconstant +SCHED_GET_PRIORITY_MAX+ 146)
(defconstant +SCHED_GET_PRIORITY_MIN+ 147)
(defconstant +SCHED_RR_GET_INTERVAL+ 148)
(defconstant +MLOCK+ 149)
(defconstant +MUNLOCK+ 150)
(defconstant +MLOCKALL+ 151)
(defconstant +MUNLOCKALL+ 152)
(defconstant +VHANGUP+ 153)
(defconstant +MODIFY_LDT+ 154)
(defconstant +PIVOT_ROOT+ 155)
(defconstant +_SYSCTL+ 156)
(defconstant +PRCTL+ 157)
(defconstant +ARCH_PRCTL+ 158)
(defconstant +ADJTIMEX+ 159)
(defconstant +SETRLIMIT+ 160)
(defconstant +CHROOT+ 161)
(defconstant +SYNC+ 162)
(defconstant +ACCT+ 163)
(defconstant +SETTIMEOFDAY+ 164)
(defconstant +MOUNT+ 165)
(defconstant +UMOUNT2+ 166)
(defconstant +SWAPON+ 167)
(defconstant +SWAPOFF+ 168)
(defconstant +REBOOT+ 169)
(defconstant +SETHOSTNAME+ 170)
(defconstant +SETDOMAINNAME+ 171)
(defconstant +IOPL+ 172)
(defconstant +IOPERM+ 173)
(defconstant +CREATE_MODULE+ 174)
(defconstant +INIT_MODULE+ 175)
(defconstant +DELETE_MODULE+ 176)
(defconstant +GET_KERNEL_SYMS+ 177)
(defconstant +QUERY_MODULE+ 178)
(defconstant +QUOTACTL+ 179)
(defconstant +NFSSERVCTL+ 180)
(defconstant +GETPMSG+ 181)
(defconstant +PUTPMSG+ 182)
(defconstant +AFS_SYSCALL+ 183)
(defconstant +TUXCALL+ 184)
(defconstant +SECURITY+ 185)
(defconstant +GETTID+ 186)
(defconstant +READAHEAD+ 187)
(defconstant +SETXATTR+ 188)
(defconstant +LSETXATTR+ 189)
(defconstant +FSETXATTR+ 190)
(defconstant +GETXATTR+ 191)
(defconstant +LGETXATTR+ 192)
(defconstant +FGETXATTR+ 193)
(defconstant +LISTXATTR+ 194)
(defconstant +LLISTXATTR+ 195)
(defconstant +FLISTXATTR+ 196)
(defconstant +REMOVEXATTR+ 197)
(defconstant +LREMOVEXATTR+ 198)
(defconstant +FREMOVEXATTR+ 199)
(defconstant +TKILL+ 200)
(defconstant +TIME+ 201)
(defconstant +FUTEX+ 202)
(defconstant +SCHED_SETAFFINITY+ 203)
(defconstant +SCHED_GETAFFINITY+ 204)
(defconstant +SET_THREAD_AREA+ 205)
(defconstant +IO_SETUP+ 206)
(defconstant +IO_DESTROY+ 207)
(defconstant +IO_GETEVENTS+ 208)
(defconstant +IO_SUBMIT+ 209)
(defconstant +IO_CANCEL+ 210)
(defconstant +GET_THREAD_AREA+ 211)
(defconstant +LOOKUP_DCOOKIE+ 212)
(defconstant +EPOLL_CREATE+ 213)
(defconstant +EPOLL_CTL_OLD+ 214)
(defconstant +EPOLL_WAIT_OLD+ 215)
(defconstant +REMAP_FILE_PAGES+ 216)
(defconstant +GETDENTS64+ 217)
(defconstant +SET_TID_ADDRESS+ 218)
(defconstant +RESTART_SYSCALL+ 219)
(defconstant +SEMTIMEDOP+ 220)
(defconstant +FADVISE64+ 221)
(defconstant +TIMER_CREATE+ 222)
(defconstant +TIMER_SETTIME+ 223)
(defconstant +TIMER_GETTIME+ 224)
(defconstant +TIMER_GETOVERRUN+ 225)
(defconstant +TIMER_DELETE+ 226)
(defconstant +CLOCK_SETTIME+ 227)
(defconstant +CLOCK_GETTIME+ 228)
(defconstant +CLOCK_GETRES+ 229)
(defconstant +CLOCK_NANOSLEEP+ 230)
(defconstant +EXIT_GROUP+ 231)
(defconstant +EPOLL_WAIT+ 232)
(defconstant +EPOLL_CTL+ 233)
(defconstant +TGKILL+ 234)
(defconstant +UTIMES+ 235)
(defconstant +VSERVER+ 236)
(defconstant +MBIND+ 237)
(defconstant +SET_MEMPOLICY+ 238)
(defconstant +GET_MEMPOLICY+ 239)
(defconstant +MQ_OPEN+ 240)
(defconstant +MQ_UNLINK+ 241)
(defconstant +MQ_TIMEDSEND+ 242)
(defconstant +MQ_TIMEDRECEIVE+ 243)
(defconstant +MQ_NOTIFY+ 244)
(defconstant +MQ_GETSETATTR+ 245)
(defconstant +KEXEC_LOAD+ 246)
(defconstant +WAITID+ 247)
(defconstant +ADD_KEY+ 248)
(defconstant +REQUEST_KEY+ 249)
(defconstant +KEYCTL+ 250)
(defconstant +IOPRIO_SET+ 251)
(defconstant +IOPRIO_GET+ 252)
(defconstant +INOTIFY_INIT+ 253)
(defconstant +INOTIFY_ADD_WATCH+ 254)
(defconstant +INOTIFY_RM_WATCH+ 255)
(defconstant +MIGRATE_PAGES+ 256)
(defconstant +OPENAT+ 257)
(defconstant +MKDIRAT+ 258)
(defconstant +MKNODAT+ 259)
(defconstant +FCHOWNAT+ 260)
(defconstant +FUTIMESAT+ 261)
(defconstant +NEWFSTATAT+ 262)
(defconstant +UNLINKAT+ 263)
(defconstant +RENAMEAT+ 264)
(defconstant +LINKAT+ 265)
(defconstant +SYMLINKAT+ 266)
(defconstant +READLINKAT+ 267)
(defconstant +FCHMODAT+ 268)
(defconstant +FACCESSAT+ 269)
(defconstant +PSELECT6+ 270)
(defconstant +PPOLL+ 271)
(defconstant +UNSHARE+ 272)
(defconstant +SET_ROBUST_LIST+ 273)
(defconstant +GET_ROBUST_LIST+ 274)
(defconstant +SPLICE+ 275)
(defconstant +TEE+ 276)
(defconstant +SYNC_FILE_RANGE+ 277)
(defconstant +VMSPLICE+ 278)
(defconstant +MOVE_PAGES+ 279)
(defconstant +UTIMENSAT+ 280)
(defconstant +EPOLL_PWAIT+ 281)
(defconstant +SIGNALFD+ 282)
(defconstant +TIMERFD_CREATE+ 283)
(defconstant +EVENTFD+ 284)
(defconstant +FALLOCATE+ 285)
(defconstant +TIMERFD_SETTIME+ 286)
(defconstant +TIMERFD_GETTIME+ 287)
(defconstant +ACCEPT4+ 288)
(defconstant +SIGNALFD4+ 289)
(defconstant +EVENTFD2+ 290)
(defconstant +EPOLL_CREATE1+ 291)
(defconstant +DUP3+ 292)
(defconstant +PIPE2+ 293)
(defconstant +INOTIFY_INIT1+ 294)
(defconstant +PREADV+ 295)
(defconstant +PWRITEV+ 296)
(defconstant +RT_TGSIGQUEUEINFO+ 297)
(defconstant +PERF_EVENT_OPEN+ 298)
(defconstant +RECVMMSG+ 299)
(defconstant +FANOTIFY_INIT+ 300)
(defconstant +FANOTIFY_MARK+ 301)
(defconstant +PRLIMIT64+ 302)
(defconstant +NAME_TO_HANDLE_AT+ 303)
(defconstant +OPEN_BY_HANDLE_AT+ 304)
(defconstant +CLOCK_ADJTIME+ 305)
(defconstant +SYNCFS+ 306)
(defconstant +SENDMMSG+ 307)
(defconstant +SETNS+ 308)
(defconstant +GETCPU+ 309)
(defconstant +PROCESS_VM_READV+ 310)
(defconstant +PROCESS_VM_WRITEV+ 311)
(defconstant +KCMP+ 312)
(defconstant +FINIT_MODULE+ 313)
(defconstant +SCHED_SETATTR+ 314)
(defconstant +SCHED_GETATTR+ 315)
(defconstant +RENAMEAT2+ 316)
(defconstant +SECCOMP+ 317)
(defconstant +GETRANDOM+ 318)
(defconstant +MEMFD_CREATE+ 319)
(defconstant +KEXEC_FILE_LOAD+ 320)
(defconstant +BPF+ 321)
(defconstant +EXECVEAT+ 322)
(defconstant +USERFAULTFD+ 323)
(defconstant +MEMBARRIER+ 324)
(defconstant +MLOCK2+ 325)
(defconstant +COPY_FILE_RANGE+ 326)
(defconstant +PREADV2+ 327)
(defconstant +PWRITEV2+ 328)
(defconstant +PKEY_MPROTECT+ 329)
(defconstant +PKEY_ALLOC+ 330)
(defconstant +PKEY_FREE+ 331)
(defconstant +STATX+ 332)
(defconstant +IO_PGETEVENTS+ 333)
(defconstant +RSEQ+ 334)
(defconstant +PIDFD_SEND_SIGNAL+ 424)
(defconstant +IO_URING_SETUP+ 425)
(defconstant +IO_URING_ENTER+ 426)
(defconstant +IO_URING_REGISTER+ 427)
(defconstant +OPEN_TREE+ 428)
(defconstant +MOVE_MOUNT+ 429)
(defconstant +FSOPEN+ 430)
(defconstant +FSCONFIG+ 431)
(defconstant +FSMOUNT+ 432)
(defconstant +FSPICK+ 433)
(defconstant +PIDFD_OPEN+ 434)
(defconstant +CLONE3+ 435)
(defconstant +CLOSE_RANGE+ 436)
(defconstant +OPENAT2+ 437)
(defconstant +PIDFD_GETFD+ 438)
(defconstant +FACCESSAT2+ 439)
(defconstant +PROCESS_MADVISE+ 440)
(defconstant +EPOLL_PWAIT2+ 441)
(defconstant +MOUNT_SETATTR+ 442)
(defconstant +QUOTACTL_FD+ 443)
(defconstant +LANDLOCK_CREATE_RULESET+ 444)
(defconstant +LANDLOCK_ADD_RULE+ 445)
(defconstant +LANDLOCK_RESTRICT_SELF+ 446)
(defconstant +MEMFD_SECRET+ 447)
(defconstant +PROCESS_MRELEASE+ 448)
(defconstant +FUTEX_WAITV+ 449)
(defconstant +SET_MEMPOLICY_HOME_NODE+ 450)
(defconstant +CACHESTAT+ 451)
(defconstant +FCHMODAT2+ 452)
(defconstant +MAP_SHADOW_STACK+ 453)
(defconstant +FUTEX_WAKE+ 454)
(defconstant +FUTEX_WAIT+ 455)
(defconstant +FUTEX_REQUEUE+ 456)

