#!/bin/sh

autoreconf --force --install -I config `dirname $0` || exit 1

exit $?

