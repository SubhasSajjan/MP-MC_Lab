.model small
.data
msg db 0dh,0ah,"Entwer alphanumeric character: $"
res db 02 dup(0)
.code
mov ax,@data
mov ds,ax
lea dx,msg
call disp
mov ah,01h
int 21h
mov bl,al
mov cl,04h
shr al,cl
cmp al,0ah
jc digit
add al,07h
digit:add al,30h
      mov res,al
      and bl,0fh
      cmp bl,0ah
      jc digit1
      add bl,07h
digit1:add bl,30h
       mov res+1,BL
       mov ah,00h
       mov al,03h
       int 10h

;       mov ah,02h
 ;      mov bh,00h
       mov dh,0fh
       mov dl,22h
       int 10h
       mov res+2,'$'
       lea dx,res
        call disp 
      ; mov ah,09h
       ;int 21h


mov ah,4ch
int 21h

disp proc near
mov ah,09h
int 21h
ret
disp endp
end
