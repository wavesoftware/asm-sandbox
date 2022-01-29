
target/hello: target/hello.o
	ld -o target/hello \
		target/hello.o

target/hello.o: target
	nasm -f elf64 \
		-o target/hello.o \
		hello.asm

target:
	mkdir -p target

.PHONY: clean
clean:
	rm -rf target

.PHONY: test
test:	target/hello
	target/hello | diff \
	  --unified --text \
		--color=always \
		- test/output.txt