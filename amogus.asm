org 0x7C00

;; beginning
mov bp, 0xfff0

xor ah, ah
mov al, 0x13

int 0x10

;; now in mode 13

call diskread
call wywoz_orkow

;; infinite loop

jmp $

;; routines

wywoz_orkow:
	xor cx, cx
.loop:
	mov ax, 0x07E0
	mov es, ax
	mov bx, cx
	mov al, [es:bx]
	push ax
	mov ax, 0xA000
	mov es, ax
	pop ax
	mov bx, cx
	call UwU
	inc cx
	cmp cx, 64000
	jbe .loop
	ret

UwU:
	mov [es:bx], al
	ret

diskread:
	pusha
	mov ah, 0x02
	mov al, 125         ;; number of sectors, (320 * 200) / 512
	mov ch, 0x00        ;; cylinder number
	mov cl, 0x02        ;; sector number
	mov dh, 0x00        ;; head number
	mov bx, 0x7E00      ;; memory ptr to load
	int 0x13
	popa
	ret

;; filling rest of disk

times 510 - ($ - $$) db 0

dw 0xaa55

%if ($ - $$) > 512
	%fatal IMPOSTOR IS SUS 😳😳😳😳
%endif

;; First sector finished

;; 🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩
;; 69 UwU sex penis cock 🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩🥩sus🥩🥩🥩🥩🥩🥩🥩🥩
