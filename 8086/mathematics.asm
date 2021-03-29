
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 0x01        ; move 0x01 into A-low register
add al, 0x01        ; add 0x01 into A-low register  
sub al, 0x01        ; subtract 0x01 from the A-low register
          
mov ax, 5550        ; move 5550 into A register
mov bx, 20          ; move 20 into B register
mul bx              ; multiply A register with B register, result is saved into the A register

mov al, -2          ; move -2 into the A-low register
mov bl, -4          ; move -4 into the B-low register
imul bl             ; imul supports negative multiplication

mov dx, 0x0a        ; move 0x0a into D register
mov ax, 0xffff      ; move 0xffff into A register
mov bx, 400         ; move 400 into B register
div bx              ; A register / B register, result will be stored in A register with the remainder stored in the D register  

mov dx, 0x0a
mov ax, 0xffff
mov bx, 0
div bx              ; divide by zero error, require to input on interrupt to handle it

ret




