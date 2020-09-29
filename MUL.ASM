.model small
.data
a db 16
b db 2
c db ?
.code
mov ax,@data
mov ds,ax
mov al,a
mul al,b
mov c,al
mov ah,4ch
int 21h
end
