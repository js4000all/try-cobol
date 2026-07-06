COBC := cobc
SRC_DIR := src
TEST_DIR := test
BUILD_DIR := build

TARGET := $(BUILD_DIR)/hello
MAIN := $(SRC_DIR)/hello.cob

COBCFLAGS := -x -free

.PHONY: all run test clean rebuild dirs

all: $(TARGET)

$(TARGET): $(MAIN) | dirs
	$(COBC) $(COBCFLAGS) -o $@ $<

dirs:
	mkdir -p $(BUILD_DIR)

run: all
	./$(TARGET)

test: all
	./$(TARGET)

clean:
	rm -rf $(BUILD_DIR)

rebuild: clean all
