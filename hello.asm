;to compile this code 
;$nasm -f elf64 -o hello.o hello.asm
;$ld hello.o -o hello
;./hello


section .data
        text db "Hello World",10

section .text
        global _start

_start:
        ; sys_write(1,text,14)
        mov rax,1
        mov rdi,1
        mov rsi,text
        mov rdx,14
        syscall
        ; sys_exit(0)
        mov rax,60
        mov rdi,0
        syscall
