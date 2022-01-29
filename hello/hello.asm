          global    _start

          section   .text
_start:   mov       rax, 1                  ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message            ; address of string to output
          mov       rdx, msglen             ; number of bytes
          syscall                           ; invoke operating system to do the write
        
          mov       rax, 60                 ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall

          section   .data
message:  db        "Hello, World!", 0xA
msglen:   equ       $-message
