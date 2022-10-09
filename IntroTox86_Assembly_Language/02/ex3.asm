global _start ; entry point of the program

section .text ; Code start here
_start:

  mov ecx, 101
  mov ebx, 42   ; exit status is 42
  mov eax, 1    ; sys_exit system call
  cmp ecx, 100
  jl skip      ; jump to "skip" label
  mov ebx, 13   ; exit status is 13
  int 0x80

skip:
  int 0x80      ; interruption
