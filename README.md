# mix-n-match

Just playing around with some polyglot fun

TL;DR
```
$ make
```
Output:
```
go build -buildmode=c-shared -o libgosum.so sum.go
gcc -Wall -o gosumc go.c libgosum.so
LD_LIBRARY_PATH=. ./gosumc
42

```
You can dig through the Makefile for most of the deets...pretty straight forward
