SHELL = /bin/sh
ARCH = $(shell arch)
DESTDIR ?= $RPM_BUILD_ROOT
CC = gcc
EXECS = install
MKDIR = mkdir
INSTALL = install
LARGE_FILE_FLAGS = -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64
LDLIBS = -lsgutils2

lto-cm: lto-cm.o
lto-cm.o: lto-cm.h

install: lto-cm $(LIBFILES)
	$(MKDIR) -p $(DESTDIR)/usr/bin
	$(INSTALL) -m 644 ./lto-cm $(DESTDIR)/usr/bin
	$(MKDIR) -p $(DESTDIR)/usr/share/man/en/man1
	$(INSTALL) -m 644 ./lto-cm.1.gz $(DESTDIR)/usr/share/man/en/man1

uninstall:
	$(RM) $(DESTDIR)/usr/bin/lto-cm
	$(RM) $(DESTDIR)/usr/share/man/en/man1/lto-cm.1.gz

reinstall: uninstall install

clean:
	@rm -f *.o *~ ./$(EXECS)
