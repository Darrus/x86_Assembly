
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

push ds                         ; push data segment into stack
mov ax, 0                       ; store 0 into A register
mov ds, ax                      ; set data segment to 0 from the A register
mov [0x00], handle_int0         ; store the offset memory address of handle_int0 into 0x00 (since a memory address is 2 bytes, it'll take up 0x00 and 0x01)
mov [0x02], cs                  ; stores the code segment memory address so that when we call the interrupt, they will know which segment to look for.
pop ds                          ; clear stack

int 0x00
ret

handle_int0:
    mov ah, 0eh                 ; special hex code for interrupt 0x10 to print a char
    mov al, 'A'                 ; store 'A' into the A-low register
    int 0x10                    ; calls interrupt 0x10
    iret                        ; interrupt return    







