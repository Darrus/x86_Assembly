
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov si, message                         ; move message memory address into SI(Source Index) register
lodsb                                   ; read from DS:[SI] and put into AL, then increment SI

ret

message: db 'Hello World!', 0           ; Data Byte Hello World!