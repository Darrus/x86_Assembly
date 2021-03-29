
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov bx, 0xfff0          ; store 0xfff0 into B register
mov [bx], 0xAAAA        ; store value A into the memory address specified by the B register. (DS:[BX])
mov byte [bx], 0xBB     ; store a byte into the memory address specified by the B register. (DS:[BX])
mov word [bx], 0xCCCC   ; store 2 bytes into the memory address specified by the B register. (DS:[BX])
mov ax, [bx]            ; takes data from the memory address specified by the B register and store into the A register.

ret




