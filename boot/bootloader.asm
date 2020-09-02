; Majority of this code is taken from https://stackoverflow.com/a/47276625

extern main
extern __bss_sizeb
extern __bss_start

global start
bits 16

start: 
                            ; setup buffer, initialize AX, DS, ES, and SS to 0
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov esp, 0x7C00
                            ; far jump, and set CS to 0
    jmp 0x0000:setcs
setcs:
    cld                     ; gcc code requires that direction flag is cleared          

    ; zero out BSS-section (since things might not be initialized to 0)
    mov cx, __bs_sizeb
    mov di, __bs_start
    rep stosb
    
    ; call video service. AH = 0h: video mode; AL = 13h: graphical mode, 40x25. 8-bit colors. 320x200 pixels
    mov al, 0x13
    mov ah, 0x00
    int 0x10
    
    ; call our external C function
    call dword main
    cli
    hlt
