.model small
.data
num1 db 07h,57h,13h,64h
num2 db 00h,03h,42h,98h
res db 4 dup(?)
.code
mov ax,@data
mov ds,ax

mov si,03h
mov cl,04h
clc
deciadd:mov al,num1[si]
        mov al,num2[si]
        das
        mov res[si],al
        dec si
        loop deciadd
        mov ah,4ch
        int 21h
        end

