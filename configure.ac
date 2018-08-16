AC_INIT([lto-cm], [0.1.0])
AM_INIT_AUTOMAKE([foreign])
AC_CANONICAL_HOST
AC_PROG_CC
AS_CASE(["$host"],
  [i?86-*-linux-gnu*],
  [SG_LIB_OBJS="lib32/sg_io_linux.o lib32/sg_lib.o lib32/sg_lib_data.o"],
  [x86_64-*-linux-gnu*],
  [SG_LIB_OBJS="lib64/sg_io_linux.o lib64/sg_lib.o lib64/sg_lib_data.o"],
  [SG_LIB_OBJS=""]
)
AC_SUBST([SG_LIB_OBJS])
AC_OUTPUT([Makefile])
