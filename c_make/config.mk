PROJ = main

VERSION = 1.0

PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

INCS = -I/usr/include -I/usr/local/include
LIBS = -L/usr/lib -L/usr/local/lib

CFLAGS = -std=c89 -pedantic -Wall -Os ${INCS} -DVERSION=\"${VERSION}\"
LDFLAGS = -s ${LIBS}

CC = cc
