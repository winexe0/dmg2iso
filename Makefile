BIN_DIR = /usr/bin
CC = gcc
CFLAGS = -O3

all: clean dmg2iso

dmg2iso: dmg2iso.o base64.o
	$(CC) -o dmg2iso.exe dmg2iso.o base64.o -L. -lz -s

dmg2iso.o: dmg2iso.cc dmg2iso.h
	$(CC) $(CFLAGS) -c dmg2iso.cc

base64.o: base64.cc base64.h
	$(CC) $(CFLAGS) -c base64.cc

install:
	install -m 755 -o root -g root dmg2iso.exe $(BIN_DIR)

clean:
	rm -f *.o dmg2iso.exe 