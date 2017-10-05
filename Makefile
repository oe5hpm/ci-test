STRIP=strip
STRIPFLAGS=-s

TARGETS=hello
OBJS=main.o

CDEFS=-I.
CFLAGS=-c
LFLAGS=-lm

%.o: %.c
	@echo [compiling] $@
	@$(CC) $(CDEFS) $(CFLAGS) -o $@ $<

all: $(TARGETS)

hello: main.o
	@echo [ linking ] $@
	@$(CC) $(LFLAGS) -o $@ $<
	@$(STRIP) $@ $(STRIPFLAGS)
clean:
	@echo [..cleanup..]
	@rm -f $(OBJS) $(TARGETS)


