
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 10                  ; move 10 into A-low register
cmp al, 10                  ; compare if A-low register == 10
je _print                   ; (Jump Equal) if ZF(Zero Flag) == 1
;jne _print                  ; (Jump Not Equal) if ZF(Zero Flag) == 0
;ja _print                   ; (Jump Above) if CF(Carry Flag) == 0 or ZF(Zero Flag) ==0
;jb  _print                  ; (Jump Below) if CF(Carry Flag) == 1
;jae _print                  ; (Jump Above Equal) if CF(Carry Flag) == 0
;jbe _print                  ; (Jump Below Equal) if (Carry Flag) == 1 or ZF (Zero Flag) == 1

jmp _exit                   ; else jump to exit

_print:
    mov ah, 0eh
    mov al, 'A'
    int 0x10
    ret
_exit:
    ret




