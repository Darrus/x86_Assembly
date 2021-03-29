
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

push 0xffff        ; push 0xffff to Stack Segment : Stack Pointer (SS:SP), which will decrement SP by 1
pop ax             ; pop data from SS:SP and put into A register 

ret




