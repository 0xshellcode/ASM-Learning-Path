global _start

_start:
  call func
  mov eax, 1            ; sys_exit system call
  mov ebx, 0            ;
  int 0x80

func:
  mov ebp, esp
  sub esp, 2
  mov [esp],   byte 'H'
  mvp [esp+1], byte 'i'
  mov eax, 4            ; sys_write system call
  mov ebx, 1            ; stdout file descriptor
  mmov ecx, esp         ; bytes to write
  mov edx, 2            ; number of bytes to write
  int 0x80              ; perform system call
  mov esp, ebp
  ret
