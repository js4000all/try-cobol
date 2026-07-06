COBC := cobc

SRC_DIR := src
BUILD_DIR := build

COB_SOURCES := $(wildcard $(SRC_DIR)/*.cob)
PROGRAMS := $(patsubst $(SRC_DIR)/%.cob,$(BUILD_DIR)/%,$(COB_SOURCES))

COBCFLAGS := -x -free

.PHONY: all list run clean rebuild dirs

all: $(PROGRAMS)

$(BUILD_DIR)/%: $(SRC_DIR)/%.cob | dirs
	$(COBC) $(COBCFLAGS) -o $@ $<

dirs:
	mkdir -p $(BUILD_DIR)

list:
	@echo "Sources:"
	@for src in $(COB_SOURCES); do echo "  $$src"; done
	@echo ""
	@echo "Programs:"
	@for program in $(PROGRAMS); do echo "  $$program"; done

clean:
	rm -rf $(BUILD_DIR)

rebuild: clean all
