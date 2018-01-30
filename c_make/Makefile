include config.mk

SRC = main.c
OBJ = ${SRC:.c=.o}

all: options ${PROJ}

options:
	@echo ${PROJ} build options:
	@echo "CFLAG   = ${CFLAGS}"
	@echo "LDFLAGS = ${LDFLAGS}"
	@echo "CC      = ${CC}"

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} $<

${OBJ}: config.mk

${PROJ}: ${OBJ}
	@echo CC -o $@
	@${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f ${PROJ} ${OBJ}

.PHONY: all options clean 
