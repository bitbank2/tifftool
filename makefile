CFLAGS=-c -Wall -O2 `pkg-config --cflags gtk+-3.0`
LIBS = `pkg-config --libs gtk+-3.0`

all: tifftool 

tifftool: main.o 
	$(CC) main.o $(LIBS) -o tifftool 

main.o: main.c
	$(CC) $(CFLAGS) main.c

clean:
	rm -rf *o tifftool
