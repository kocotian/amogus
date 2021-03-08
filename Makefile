FILE = amogus.data

run: amogus
	qemu-system-x86_64 $<

amogus: amogus.asm
	nasm $< -o $@
	cat ${FILE} >> amogus

.PHONY: run
