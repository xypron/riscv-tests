#!/bin/sh

run_single() {
	echo
	echo "Starting $1"
	/usr/bin/qemu-system-riscv64 \
	  -M spike -cpu rva23s64 \
	  -bios none -nographic \
	  -kernel $1
	echo "Completing $1"
}


for t in $(find benchmarks/ -name '*\.riscv'); do
	run_single $t
done
