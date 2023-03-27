
target/hello: target/hello.o
	gcc -fno-plt \
		-o target/hello \
		target/hello.o

target/hello.o: target hello.asm
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
	target/hello | xxd | diff \
	  --unified --text \
		--color=always \
		- test/output.hex
	@echo -e "\033[92m>> Success!\033[0m"
