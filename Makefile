CC = gcc
CFLAGS = -Wall -O0 -g -ggdb
TARGET = mysql2dns
LIBS = -lmysqlclient

all: $(TARGET)

$(TARGET): Makefile mysql2dns.o
	$(CC) $(CFLAGS) mysql2dns.o -o $(TARGET) $(LIBS)

mysql2dns.o: Makefile mysql2dns.c
	$(CC) $(CFLAGS) -D'PROG_NAME="$(TARGET)"' -c mysql2dns.c -o mysql2dns.o

clean:
	rm -f $(TARGET) $(OBJECTS)
