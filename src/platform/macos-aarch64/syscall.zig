export fn syscall0(sysno: usize) usize {
    return asm volatile ("svc 0"
        : [ret] "={x0}" (-> usize),
        : [sysno] "{x16}" (sysno),
    );
}

export fn syscall1(sysno: usize, arg1: usize) usize {
    return asm volatile ("svc 0"
        : [ret] "={x0}" (-> usize),
        : [sysno] "{x16}" (sysno),
          [arg1] "{x0}" (arg1),
    );
}

export fn syscall2(sysno: usize, arg1: usize, arg2: usize) usize {
    return asm volatile ("svc 0"
        : [ret] "={x0}" (-> usize),
        : [sysno] "{x16}" (sysno),
          [arg1] "{x0}" (arg1),
          [arg2] "{x1}" (arg2),
    );
}

export fn syscall3(sysno: usize, arg1: usize, arg2: usize, arg3: usize) usize {
    return asm volatile ("svc 0"
        : [ret] "={x0}" (-> usize),
        : [sysno] "{x16}" (sysno),
          [arg1] "{x0}" (arg1),
          [arg2] "{x1}" (arg2),
          [arg3] "{x2}" (arg3),
    );
}

export fn syscall4(sysno: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize) usize {
    return asm volatile ("svc 0"
        : [ret] "={x0}" (-> usize),
        : [sysno] "{x16}" (sysno),
          [arg1] "{x0}" (arg1),
          [arg2] "{x1}" (arg2),
          [arg3] "{x2}" (arg3),
          [arg4] "{x3}" (arg4),
    );
}

export fn syscall5(sysno: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize, arg5: usize) usize {
    return asm volatile ("svc 0"
        : [ret] "={x0}" (-> usize),
        : [sysno] "{x16}" (sysno),
          [arg1] "{x0}" (arg1),
          [arg2] "{x1}" (arg2),
          [arg3] "{x2}" (arg3),
          [arg4] "{x3}" (arg4),
          [arg5] "{x4}" (arg5),
    );
}

export fn syscall6(sysno: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize, arg5: usize, arg6: usize) usize {
    return asm volatile ("svc 0"
        : [ret] "={x0}" (-> usize),
        : [sysno] "{x16}" (sysno),
          [arg1] "{x0}" (arg1),
          [arg2] "{x1}" (arg2),
          [arg3] "{x2}" (arg3),
          [arg4] "{x3}" (arg4),
          [arg5] "{x4}" (arg5),
          [arg6] "{x5}" (arg6),
    );
}
