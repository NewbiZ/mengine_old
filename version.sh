#!/bin/sh

if [ ! -f include/mengine/mengine.h ]; then
    echo "version.sh: error: include/mengine/mengine.h does not exist" 1>&2
    exit 1
fi

MAJOR=`egrep '^#define +MENGINE_VERSION_MAJOR +[0-9]+$' include/mengine/mengine.h`
MINOR=`egrep '^#define +MENGINE_VERSION_MINOR +[0-9]+$' include/mengine/mengine.h`
PATCH=`egrep '^#define +MENGINE_VERSION_PATCH +[0-9]+$' include/mengine/mengine.h`

if [ -z "$MAJOR" -o -z "$MINOR" -o -z "$PATCH" ]; then
    echo "version.sh: error: could not extract version from include/mengine/mengine.h" 1>&2
    exit 1
fi

MAJOR=`echo $MAJOR | awk '{ print $3 }'`
MINOR=`echo $MINOR | awk '{ print $3 }'`
PATCH=`echo $PATCH | awk '{ print $3 }'`

echo $MAJOR.$MINOR.$PATCH | tr -d '\n'

