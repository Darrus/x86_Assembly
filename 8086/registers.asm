org 100h

mov al, 0x11        ; move 0x11 into register A low byte
mov ax, 0xffff      ; move 0xffff into register A high and low byte
mov ah, 0x20        ; move 0x20 into register A high byte

ret