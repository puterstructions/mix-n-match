.PHONY: all clean

all: gosumc

gosumc: go.c libgosum.so
	gcc -Wall -o $@ $?

libgosum.so: sum.go
	go build -buildmode=c-shared -o $@ $?

clean:
	rm -rf gosumc libgosum.h libgosum.so
