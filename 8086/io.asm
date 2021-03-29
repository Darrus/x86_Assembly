
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 0xAA            ; store 0xAA into A-low register
out 110, al             ; write A to port 110 of simple.exe (virtual device)

in al, 112              ; read into A-low register from port 112 of simple.exe (virtual device)

ret




