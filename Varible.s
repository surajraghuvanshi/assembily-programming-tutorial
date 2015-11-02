#data types
.data
	Stringhello:
		.ascii "suraj pratap"
	bytelocation:
		.byte 10
	inte32:
		.int 2
	inte16:
		.short 3
	float:
		.float 10.23
	intergerarrray:
		.int 12, 24,64, 32, 83,27
.bss
	.comm lagrebuffer , 1000
.text
	.globl _start
_start:
	movl $1, %eax
	movl $0, %ebx
	int $0x80


