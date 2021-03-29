
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 0x300       ; move 0x300 into A register
mov ds, ax          ; move 0x300 from A register into Data Segment(DS)
mov [0xff], 0xAA    ; move 0xAA into (DS * 16) + 0xff, 0300:00FF = Physical Address (30FF)

ret