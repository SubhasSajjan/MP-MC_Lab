.model small
.data
a dw 245
b db 25
c db 34
d db 50
r1 dw ?
r2 dw ?
r3 dw ?
q  db ?
r db ?
.code
mov ax,@data
mov ds,ax
mov ax,a
mov bx,b
add ax,bx
mov r1,ax

mov ax,c
mov bx,d
add ax,bx
mov r2,ax

mov ax,b
mov bx,d
add ax,bx
mov r3,ax

mov ax,r1
mul r2
div r3

mov q,al
mov r,ah
mov ah,4ch
int 21h
end
