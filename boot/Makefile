BUILD_DIR = ../build/bootloader

BOOTLOADER_SRCS := $(wildcard *.asm)
BOOTLOADER_OBJS := $(patsubst %.asm, $(BUILD_DIR)/%.o, $(BOOTLOADER_SRCS))

all: $(BOOTLOADER_OBJS)


# "$@ is a special variable that that refers to the output of the recipe: %.o"
# "$< is a special variable that refers to the input of the recipe: %.asm"
$(BUILD_DIR)/%.o: %.asm
	nasm -f bin $< -o $@

