
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

_main:
    call _test          ; by calling a subroutine, the next IP(Instruction Pointer) is pushed into stack so that the code know where to return to. 
    mov ah, 0x20
    ret
    
_test:
    mov ah, 0x10 
    ret                 ; return by taking the address from the stack

ret




