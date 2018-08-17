SHELL = /bin/sh
ARCH = $(shell arch)
CC = gcc
EXECS = install
MKDIR = mkdir
INSTALL = install
LARGE_FILE_FLAGS = -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64
LDLIBS = -lsgutils2
PREFIX ?= /usr/local
BIN_DIR = $(DESTDIR)$(PREFIX)/bin
MAN1_DIR = $(DESTDIR)$(PREFIX)/share/man/man1

lto-cm: lto-cm.o
lto-cm.o: lto-cm.h

install: lto-cm $(LIBFILES)
	$(MKDIR) -p $(BIN_DIR)
	$(INSTALL) ./lto-cm $(BIN_DIR)
	$(MKDIR) -p $(MAN1_DIR)
	$(INSTALL) -m 644 ./lto-cm.1.gz $(MAN1_DIR)

uninstall:
	$(RM) $(BIN_DIR)/lto-cm
	$(RM) $(MAN1_DIR)/lto-cm.1.gz

reinstall: uninstall install

clean:
	@rm -f *.o *~ ./$(EXECS)
