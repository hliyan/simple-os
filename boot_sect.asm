mov ah, 0x0e    ; 0x0e is teletype mode for interrupt t10

mov al, 'H'     ; lower byte of ax 
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $           ; jump to current address - loop

times 510-($-$$) db 0 ; pad till last 2 bytes of the 512-byte boot sector

dw 0xaa55 ; indicate boot sector
