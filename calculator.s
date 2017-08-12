;; This program was written from scratch and doesn't work properly.
;; I uploaded a second Calculator.s, which is compiled with <gcc -S> from Calculator.c

.section .data
hello1: .ascii "Bitte Zahl1 eingeben:"
hello2: .ascii "Bitte Zahl2 eingeben:"
result: .ascii "Das Resultat lautet:\n"
buf1: .long
buf2: .long
sum: .long

.section .text
.globl _start
_start:
	pushl $1
	call add
	addl $4, %esp

	pushl %eax
	call exit
	
	# Ausgabe 1
#	mov $4, %eax
#	mov $0, %ebx
#	mov $hello1, %ecx
#	mov $21, %edx
#	int $0x80

	# Einlesen 1
#	movl $3, %eax
#	movl $0, %ebx
#	movl $buf1, %ecx
#	movl $2, %edx
#	int $0x80

	# Ausgabe 2
#	mov $4, %eax
#	mov $0, %ebx
#	mov $hello2, %ecx
#	mov $21, %edx
#	int $0x80

	# Einlesen 2
#	movl $3, %eax
#	movl $0, %ebx
#	movl $buf2, %ecx
#	movl $2, %edx
#	int $0x80

	# Ausgabe Result
#	mov $4, %eax
#	mov $0, %ebx
#	mov $result, %ecx
#	mov $21, %edx
#	int $0x80

# addiert 1 zu dem wert
.type add, @function
add:
	pushl %ebp		#sichern des Basepointers
	movl %esp, %ebp
	subl $4, %esp		#4 bytes fur lokale Variable
	movl 8(%ebp), %eax	#1.Parameter nach eax
	movl %eax, -4(%ebp)	#1.Parameter in lokale Variable
	addl $6, -4(%ebp)	#lokale Variable + 1
	movl -4(%ebp), %eax	#Resultat nach eax
	addl $4, %esp		#stackpointer zuruck, lokale V geloscht
	popl %ebp		#basepointer zuruck
	ret			#rucksprungadresse zuruck


# subtrahiert
.type sub, @function
sub:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
	movl 8(%ebp), %eax
	movl %eax, -4(%ebp)
	addl $6, -4(%ebp)
	movl -4(%ebp), %eax
	addl $4, %esp
	popl %ebp
	ret

# multipliziert
.type mul, @function
mul:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
	movl 8(%ebp), %eax
	movl %eax, -4(%ebp)
	addl $6, -4(%ebp)
	movl -4(%ebp), %eax
	addl $4, %esp
	popl %ebp
	ret

# dividiert
.type div, @function
div:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
	movl 8(%ebp), %eax
	movl %eax, -4(%ebp)
	addl $6, -4(%ebp)
	movl -4(%ebp), %eax
	addl $4, %esp
	popl %ebp
	ret
