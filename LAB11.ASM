dosseg
.model small
.stack
.data
.code
mov ax,@data
mov ds,ax
mov ah,0fh
int 10h
push ax
mov ah,00h
mov al,12h
int 10h

mov cx,170
mov dx,360
mov ax,0c02h
back:
int 10h
inc cx
cmp cx,470
jb back

mov cx,170
mov dx,240
mov ax,0c02h
back2:
int 10h
inc cx
cmp cx,470
jb back2
mov cx,170
mov dx,120
mov ax,0c02h
back3:
int 10h
inc cx
cmp cx,470
jb back3
mov cx,170
mov dx,120
mov ax,0c02h
back4:
int 10h
inc dx
cmp dx,360
jb back4
mov cx,320
mov dx,120
mov ax,0c02h
back5:
int 10h
inc dx
cmp dx,360
jb back5
mov cx,470
mov dx,120
mov ax,0c02h
back6:
int 10h
inc dx
cmp dx,360
jb back6


mov ah,07h
int 21h
pop ax
mov ah,00h
int 10h






mov ax,4c00h
int 21h
end

