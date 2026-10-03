AARCH64_TRIPLE ?= aarch64-linux-gnu
AARCH64_CC ?= $(AARCH64_TRIPLE)-gcc
OUTPUT ?= hello-aarch64

ifneq ($(filter %android %bionic,$(AARCH64_TRIPLE)),)
$(error Bionic/Android targets are not supported. Use a GNU target such as aarch64-linux-gnu)
endif

.PHONY: all clean

all: $(OUTPUT)

$(OUTPUT): hello.c
	$(AARCH64_CC) -O2 -Wall -Wextra hello.c -o $(OUTPUT)

clean:
	rm -f $(OUTPUT)
