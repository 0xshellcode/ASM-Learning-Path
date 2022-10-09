global _start

_start:
  call func
  mox eax, 1
  int 0x80

func:
  mov ebx, 42
  ;pop eax
  ;jmp eax
  ret
