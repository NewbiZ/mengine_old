AC_PREREQ(2.59)

AC_INIT([mengine], [m4_esyscmd([./version.sh])], [vallee.aurelien@gmail.com])

AC_CONFIG_AUX_DIR([config])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_HEADERS([libmengine/config.h])

AC_CANONICAL_SYSTEM

AM_INIT_AUTOMAKE([foreign])
LT_INIT

LTVER="1:0:0"
AC_SUBST(LTVER)

AC_PROG_CXX
AC_PROG_LIBTOOL
AM_PROG_CC_C_O

AC_CONFIG_FILES(Makefile \
                libmengine/Makefile \
                libmengine/libmengine.pc \
                tests/Makefile \
                examples/Makefile \
                examples/hello_world/Makefile)

AC_OUTPUT
