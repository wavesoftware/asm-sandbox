.PHONY: all
all: target/fib.asm

target/fib.asm: target/fib
	objdump --disassemble target/fib > target/fib.asm

target/fib: target fib.c
	gcc -Wall -o target/fib fib.c

target:
	mkdir -p target

.PHONY: clean
clean:
	rm -rf target

.PHONY: test
test:	target/fib.asm
	@echo -e "\033[92m>> Success!\033[0m"
