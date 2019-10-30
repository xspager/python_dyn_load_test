
all:	awesome.so foo.so

awesome.so	:	awesome.go
	go build -o $@ -buildmode=c-shared $<

foo.so	:	foo.c
	gcc -Wall -fPIC -shared -o $@ `pkg-config --cflags --libs python3` $<

clean:
	rm *.so
