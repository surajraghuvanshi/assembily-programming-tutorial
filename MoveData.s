#data movement
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
	nop
	# move immediate value into register
	movl $10, %eax
	# move immdiate value into memory
	movw $22, inte16
	# move data between register
	movl %eax, %ebx
	# move data from memory location to register
	movl inte32, %ecx
	# move data from memory to location
	movb $3, %al
	movb %al, bytelocation
	# move data into extended memory location
	# location is decided by BaseAddress (Offset, Index, Size)
	# Offset and Index must be register and Size can be an integer value
	movl $0, %ecx
	movl $2, %edi
	movl $22, intergerarrray(%ecx, %edi, 2)
	# indirect addressing using registers
	movl $inte32, %eax
	movl(%eax), %ebx
	movl $9, (%eax)	
	# exit the program
	movl $1, %eax
	movl $0, %ebx
	int $0x80


