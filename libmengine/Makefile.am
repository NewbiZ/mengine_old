lib_LTLIBRARIES = libmengine.la

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = libmengine.pc

pkginclude_HEADERS = $(top_srcdir)/include/mengine/mengine.h

libmengine_la_SOURCES = \
	mengine.cpp

libmengine_la_LDFLAGS = -no-undefined -version-info @LTVER@

libmengine_la_LIBADD = $(libglfw_LIBS)

libmengine_la_CXXFLAGS = -I$(top_srcdir)/include/ \
						 -Wall \
						 -pedantic \
						 $(libglfw_CFLAGS)
