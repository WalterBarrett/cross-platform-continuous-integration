PREFIX=
MAIN=helloworld
OBJECTS=main.o
CC=gcc

.PHONY: all

all: $(MAIN)
$(MAIN): $(OBJECTS)
	$(PREFIX)$(CC) $(OBJECTS) -o $(MAIN) $(COPTS)

main.o: main.c
	$(PREFIX)$(CC) -c main.c $(COPTS)

clean:
	rm -f *.o
	rm -f $(MAIN)
	rm -f $(MAIN).exe
