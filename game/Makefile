BUILD_DIR=../build/game

GAME_SRCS := $(wildcard *.asm)
GAME_OBJS := $(patsubst %.asm, $(BUILD_DIR)/%.o, $(OS_SRCS))

all: $(OS_OBJS)


$(BUILD_DIR)/%.o: %.asm
	nasm -f bin $< -o $@
