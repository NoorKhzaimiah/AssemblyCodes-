dosseg
.model small
.data
m1 db "enter n1" , "$"
m2 db 13,10, "enter n2", "$"
m3 db 13,10 ,"GCD is :","$"
n1 dw ?
n2 dw ?
gcd dw ?

.code
main:
mov ax,@data
mov ds,ax
mov ah,9
mov dx, offset m1
int 21h
mov ah,1

int 21h
mov dx,0

sub al,30h
mov bl ,100
mul bl
add dx, ax
mov ah,1
int 21h
sub al ,30h
mov bl ,10
mul bl
add dx,ax
mov ah,1
int 21h
sub al ,30h
mov bl ,1
mul bl
add dx,ax

mov n1,dx

mov ah,9
mov dx, offset m2
int 21h
mov ah,1

int 21h
mov dx,0

sub al,30h
mov bl ,100
mul bl
add dx, ax
mov ah,1
int 21h
sub al ,30h
mov bl ,10
mul bl
add dx,ax
mov ah,1
int 21h
sub al ,30h
mov bl ,1
mul bl
add dx,ax

mov n2,dx

mov ah,9
mov dx, offset m3
int 21h





mov ax ,n1
mov bx ,n2

l1:mov dx,0
mov cx,bx

div bx

mov bx,dx
mov ax,cx

cmp bx,0
jne l1

mov gcd,ax

push dx
push cx
push bx
push ax

mov cx,0
mov bx,10
back:mov dx,0

div bx
push dx
inc cx
cmp ax,0
jnz back

 mov ah,2
print :pop dx
add dl,30h
int 21h

loop print

pop ax
pop bx
pop cx
pop dx



mov ah,4ch
int 21h






end main
