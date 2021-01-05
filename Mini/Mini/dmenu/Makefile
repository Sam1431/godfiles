VERSION = 0.1

CC      ?= gcc
LIBS     = -lX11 -lXinerama -lXft -lXrender -lfreetype -lz -lfontconfig
CFLAGS  += -std=c99 -pedantic -Wall -Wextra -I/usr/include/freetype2 -O3
CFLAGS  += -DXINERAMA -D_POSIX_C_SOURCE=200809L -DVERSION=\"$(VERSION)\"
LDFLAGS +=

PREFIX   ?= /usr/local
BINPREFIX = $(PREFIX)/bin
MANPREFIX = $(PREFIX)/share/man

DM_SRC = dmenu.c draw.c rc.c
DM_OBJ = $(DM_SRC:.c=.o)

ST_SRC = stest.c
ST_OBJ = $(ST_SRC:.c=.o)

all: LDFLAGS += -s
all: dmenu stest

debug: CFLAGS += -g -O0 -DDEBUG
debug: dmenu stest

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

dmenu: $(DM_OBJ)
	$(CC) -o $@ $(DM_OBJ) $(LDFLAGS) $(LIBS)

stest: $(ST_OBJ)
	$(CC) -o $@ $(ST_OBJ) $(LDFLAGS) $(LIBS)

install:
	mkdir -p "$(DESTDIR)$(BINPREFIX)"
	cp -p dmenu dmenu_run dmenu_rund stest "$(DESTDIR)$(BINPREFIX)"
	mkdir -p "$(DESTDIR)$(MANPREFIX)"/man1
	cp -p dmenu.1 stest.1 "$(DESTDIR)$(MANPREFIX)"/man1

uninstall:
	rm -f "$(DESTDIR)$(BINPREFIX)"/dmenu
	rm -f "$(DESTDIR)$(BINPREFIX)"/dmenu_run
	rm -f "$(DESTDIR)$(BINPREFIX)"/dmenu_rund
	rm -f "$(DESTDIR)$(BINPREFIX)"/stest
	rm -f "$(DESTDIR)$(MANPREFIX)"/man1/dmenu.1
	rm -f "$(DESTDIR)$(MANPREFIX)"/man1/stest.1

clean:
	rm -f $(DM_OBJ) $(ST_OBJ) dmenu stest

.PHONY: all debug install uninstall clean
