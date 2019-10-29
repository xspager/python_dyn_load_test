
awesome.so:	awesome.go
	go build -o $@ -buildmode=c-shared $<
