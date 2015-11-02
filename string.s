# Strings in asembely
.data # define string
	HelloWorldString:
		.asciz "Hello world assembely"
	h3llo:
		.asciz "h3llo"
.bss #define uninitilised data labels
	.lcomm	Destination, 100
	.lcomm	DestinationUsingRep, 100
	.lcomm	DestinationUsingStos, 100
.text
	.globl _start
_start:
	nop
###  Simple copy using movsb , movsl, movsw
	movl $HelloWorldString, %esi
	movl $Destination, %edi
	movsb # move first byte of HelloWorldString pointed by esi into Destination pointed by edi 
# note examine esi and edi after every transmission of string or byte. need to check about the flags
	movsw # move the 
	movsl
### setting and clearing the DF flags
	std # set the DF flag
	cld # clear the DF flag
## Using Rep
	movl $HelloWorldString, %esi
	movl $DestinationUsingRep, %edi
	movl $25, %ecx # set the staring length in ECX 
#### have to check with less bits like 23 and print values x/1s &DestinationUsingRep
	cld  # clear the flag
	rep movsb
	std # set the flag
# Loading strigs from EAX to register		
	cld
	leal HelloWorldString, %esi
	lodsb
	movb $0, %al
	dec %esi
	lodsw
	movw $0, %ax
	subl $2, %esi # make ESI point back to the orignal string
	lodsl
# String string from EAX to memory
	leal DestinationUsingStos, %edi
	stosb
	stosw
	stosl
# comparing the staring
	
# exit the program
	movl $1, %eax
	movl $0, %ebx
	int $0x80

