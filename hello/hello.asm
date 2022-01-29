          global    main
          extern    puts

          section   .text
main:    

          mov       rdi, message            ; First integer (or pointer) argument in rdi
          call      puts                    ; puts(message)

          mov       rax, 1                  ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, message            ; address of string to output
          mov       rdx, msglen             ; number of bytes
          syscall                           ; invoke operating system to do the write

          ret

          section   .data
message:  dw        "Hello, World!", 0xA
msglen:   equ       $-message - 1
