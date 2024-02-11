export fn syscall0(sysno: usize) usize {
    return asm volatile ("syscall"
        : [ret] "={rax}" (-> usize),
        : [sysno] "{rax}" (sysno),
        : "rcx", "r11"
    );
}

export fn syscall1(sysno: usize, arg1: usize) usize {
    return asm volatile ("syscall"
        : [ret] "={rax}" (-> usize),
        : [sysno] "{rax}" (sysno),
          [arg1] "{rdi}" (arg1),
        : "rcx", "r11"
    );
}

export fn syscall2(sysno: usize, arg1: usize, arg2: usize) usize {
    return asm volatile ("syscall"
        : [ret] "={rax}" (-> usize),
        : [sysno] "{rax}" (sysno),
          [arg1] "{rdi}" (arg1),
          [arg2] "{rsi}" (arg2),
        : "rcx", "r11"
    );
}

export fn syscall3(sysno: usize, arg1: usize, arg2: usize, arg3: usize) usize {
    return asm volatile ("syscall"
        : [ret] "={rax}" (-> usize),
        : [sysno] "{rax}" (sysno),
          [arg1] "{rdi}" (arg1),
          [arg2] "{rsi}" (arg2),
          [arg3] "{rdx}" (arg3),
        : "rcx", "r11"
    );
}

export fn syscall4(sysno: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize) usize {
    return asm volatile ("syscall"
        : [ret] "={rax}" (-> usize),
        : [sysno] "{rax}" (sysno),
          [arg1] "{rdi}" (arg1),
          [arg2] "{rsi}" (arg2),
          [arg3] "{rdx}" (arg3),
          [arg4] "{r10}" (arg4),
        : "rcx", "r11"
    );
}

export fn syscall5(sysno: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize, arg5: usize) usize {
    return asm volatile ("syscall"
        : [ret] "={rax}" (-> usize),
        : [sysno] "{rax}" (sysno),
          [arg1] "{rdi}" (arg1),
          [arg2] "{rsi}" (arg2),
          [arg3] "{rdx}" (arg3),
          [arg4] "{r10}" (arg4),
          [arg5] "{r8}" (arg5),
        : "rcx", "r11"
    );
}

export fn syscall6(sysno: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize, arg5: usize, arg6: usize) usize {
    return asm volatile ("syscall"
        : [ret] "={rax}" (-> usize),
        : [sysno] "{rax}" (sysno),
          [arg1] "{rdi}" (arg1),
          [arg2] "{rsi}" (arg2),
          [arg3] "{rdx}" (arg3),
          [arg4] "{r10}" (arg4),
          [arg5] "{r8}" (arg5),
          [arg6] "{r9}" (arg6),
        : "rcx", "r11"
    );
}
