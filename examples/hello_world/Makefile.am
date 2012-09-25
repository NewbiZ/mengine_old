noinst_PROGRAMS = hello_world

hello_world_CXXFLAGS = -I$(top_builddir)/include \
						$(libglfw_CFLAGS)

hello_world_LDFLAGS = $(libglfw_LDFLAGS)

hello_world_LDADD = $(top_builddir)/libmengine/libmengine.la \
					$(libglfw_LIBS)

hello_world_SOURCES = hello_world.cpp
