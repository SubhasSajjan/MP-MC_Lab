.model small
.data
n db 5
a db  05,03,07,06
.code
mov ax,@data
mov ds,ax
mov cl,n
dec cl
outloop:mov ch,cl
        mov si,00h
inloop:mov al,a[si]
       inc si
       cmp al,a[si]
       jnc noexch
       xchg al,a[si]
       mov a[si-1],al
noexch:dec ch
       jnz inloop
       dec cl
       jnz outloop
       mov ah,4ch
       int 21h
       end


