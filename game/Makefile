BUILD_DIR=../build/game

GAME_SRCS := $(wildcard *.asm)
GAME_OBJS := $(patsubst %.asm, $(BUILD_DIR)/%.o, $(GAME_SRCS))

all: $(GAME_SRCS)

clean:
	rm $(BUILD_DIR)/*

$(BUILD_DIR)/%.o: %.asm
	nasm -f bin $< -o $@
