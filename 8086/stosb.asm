
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,'A'                          ; move A into A-low register
mov di, message                     ; store message memory address into DI(Destination Index) register
stosb                               ; overwrite first letter in message from char in AL and increment DI by 1
stosb                               ; overwrite next letter in message from char in AL and increment DI by 1  

ret            

message: db 'Hello World!', 0




