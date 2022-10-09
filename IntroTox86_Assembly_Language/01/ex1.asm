

global _start  ; These are the entry point of the program
_start:        ; This is where the processor'll start executing instructions


  mov eax, 1   ; dertermine which system call to perform, 1 is for exit
  mov ebx, 42  ; exit status, can be any integer, 42 is just an example
  sub ebx, 29
  int 0x80     ; Process will transfer control to an interrupt handler, 0x80 is for systemcall
