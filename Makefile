AARCH64_TRIPLE ?= aarch64-linux-gnu
AARCH64_CC ?= $(AARCH64_TRIPLE)-gcc
OUTPUT ?= hello-aarch64
UNAME_O ?= $(shell uname -o 2>/dev/null || echo unknown)

ifeq ($(UNAME_O),Android)
$(error Current system is Android/Bionic and does not support required GNU-specific features)
endif

ifneq ($(filter %android %bionic,$(AARCH64_TRIPLE)),)
$(error Bionic/Android targets are not supported. Use a GNU target such as aarch64-linux-gnu)
endif

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): hello.c
	$(AARCH64_CC) -std=gnu11 -O2 -Wall -Wextra hello.c -o $(OUTPUT)

clean:
	rm -f $(OUTPUT)
