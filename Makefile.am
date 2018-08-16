bin_PROGRAMS = lto-cm
AM_CPPFLAGS = -I$(top_srcdir)/include -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64
lto_cm_SOURCES = lto-cm.c lto-cm.h include/sg_lib.h include/sg_io_linux.h \
    include/sg_linux_inc.h
lto_cm_LDADD = @SG_LIB_OBJS@
