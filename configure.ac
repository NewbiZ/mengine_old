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

AC_ARG_WITH([debug], [AS_HELP_STRING([--with-debug],
	[Enable debug [default=no]])], [enable_debug=$withval],
	[enable_debug=no])
AM_CONDITIONAL(ENABLE_DEBUG, test "X$enable_debug" = "Xyes")
if test "X$enable_debug" = "Xyes"
then
    CXXFLAGS="$CXXFLAGS -g -O0 -DDEBUG"
    AC_MSG_NOTICE([*** INFO: Debug mode is enabled])
fi
AC_SUBST([EXAMPLES_DIR])

AC_ARG_WITH([examples], [AS_HELP_STRING([--with-examples],
	[Enable examples [default=no]])], [enable_examples=$withval],
	[enable_examples=no])
AM_CONDITIONAL(ENABLE_EXAMPLES, test "X$enable_examples" = "Xyes")
if test "X$enable_examples" = "Xyes"
then
    EXAMPLES_DIR=examples
    AC_MSG_NOTICE([*** INFO: Examples will be generated])
else
    EXAMPLES_DIR=
fi
AC_SUBST([EXAMPLES_DIR])

AC_ARG_WITH([tests], [AS_HELP_STRING([--with-tests],
	[Enable tests [default=no]])], [enable_tests=$withval],
	[enable_tests=no])
AM_CONDITIONAL(ENABLE_TESTS, test "X$enable_tests" = "Xyes")
if test "X$enable_tests" = "Xyes"
then
    TESTS_DIR=tests
    AC_MSG_NOTICE([*** INFO: Tests will be generated])
else
    TESTS_DIR=
fi
AC_SUBST([TESTS_DIR])

PKG_CHECK_MODULES([libglfw], [libglfw >= 2.7])

AC_CONFIG_FILES(Makefile \
                libmengine/Makefile \
                libmengine/libmengine.pc \
                tests/Makefile \
                examples/Makefile \
                examples/hello_world/Makefile)

AC_OUTPUT
