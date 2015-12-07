#hello world in assembily
#testing for 
.data
	helloworldstring:
		.ascii "my string"
.text
.globl _start
# define program calls
_start:
	movl $4, %eax
	movl $1, %ebx
	movl $helloworldstring, %ecx
	movl $9, %edx
	int $0x80
# start exit call
	movl $1, %eax
	movl $0, %ebx
	int $0x80 
		
