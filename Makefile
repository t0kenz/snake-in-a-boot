BUILD_DIR=build
BOOTLOADER=$(BUILD_DIR)/bootloader/bootloader.o
GAME=$(BUILD_DIR)/game/sample.o


all: 

bootloader:
	make -C bootloader

game:
	make -C game


clean:
	make -C bootloader clean
	make -C game clean

qemu:
	qemu-system-i386 -machine q35
