#!/bin/sh

autoreconf --force --install -I config -I m4 `dirname $0` || exit 1

exit $?

