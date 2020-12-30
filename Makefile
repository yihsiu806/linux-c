SRCPATH := $(shell pwd)
DSTPATH := $(SRCPATH)/out
EXEC := $(patsubst %.c,$(DSTPATH)/%,$(wildcard *.c))

all: $(EXEC)

$(EXEC): $(DSTPATH)/%: $(SRCPATH)/%.c
	@mkdir -p $(DSTPATH)
	gcc -o $@ $<

clean:
	rm -rf $(EXEC)

.PHONY: all clean