.PHONY: all clean

all: gosumc run

gosumc: go.c libgosum.so
	gcc -Wall -o $@ $?

libgosum.so: sum.go
	go build -buildmode=c-shared -o $@ $?

clean:
	rm -rf gosumc libgosum.h libgosum.so

run:
	LD_LIBRARY_PATH=. ./gosumc
