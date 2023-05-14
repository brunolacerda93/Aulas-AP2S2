	.file	"Program.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii ".UTF8\0"
	.text
	.globl	Locale
	.def	Locale;	.scl	2;	.type	32;	.endef
	.seh_proc	Locale
Locale:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdx
	movl	$0, %ecx
	call	setlocale
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	clearBuffer
	.def	clearBuffer;	.scl	2;	.type	32;	.endef
	.seh_proc	clearBuffer
clearBuffer:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	nop
.L3:
	call	getchar
	cmpl	$10, %eax
	jne	.L3
	nop
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "\12Pressione <enter> para continuar... \0"
	.text
	.globl	pause
	.def	pause;	.scl	2;	.type	32;	.endef
	.seh_proc	pause
pause:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "\33[1;1H\33[2J\0"
	.text
	.globl	cleanScreen
	.def	cleanScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	cleanScreen
cleanScreen:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	String
	.def	String;	.scl	2;	.type	32;	.endef
	.seh_proc	String
String:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	calloc
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	swap
	.def	swap;	.scl	2;	.type	32;	.endef
	.seh_proc	swap
swap:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	24(%rbp), %rax
	movl	(%rax), %edx
	movq	16(%rbp), %rax
	movl	%edx, (%rax)
	movq	24(%rbp), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	validateTime
	.def	validateTime;	.scl	2;	.type	32;	.endef
	.seh_proc	validateTime
validateTime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	cmpl	$0, 16(%rbp)
	js	.L10
	cmpl	$24, 16(%rbp)
	jle	.L11
.L10:
	movl	$0, %eax
	jmp	.L12
.L11:
	cmpl	$0, 24(%rbp)
	js	.L13
	cmpl	$59, 24(%rbp)
	jle	.L14
.L13:
	movl	$0, %eax
	jmp	.L12
.L14:
	cmpl	$0, 32(%rbp)
	js	.L15
	cmpl	$59, 32(%rbp)
	jle	.L16
.L15:
	movl	$0, %eax
	jmp	.L12
.L16:
	movl	$1, %eax
.L12:
	popq	%rbp
	ret
	.seh_endproc
	.globl	Int
	.def	Int;	.scl	2;	.type	32;	.endef
	.seh_proc	Int
Int:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	jmp	.L18
.L20:
	cmpl	$45, -12(%rbp)
	jne	.L19
	movl	$-1, -8(%rbp)
	jmp	.L18
.L19:
	cmpl	$47, -12(%rbp)
	jle	.L18
	cmpl	$57, -12(%rbp)
	jg	.L18
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	subl	$48, %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
.L18:
	call	getchar
	movl	%eax, -12(%rbp)
	cmpl	$10, -12(%rbp)
	jne	.L20
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	Double
	.def	Double;	.scl	2;	.type	32;	.endef
	.seh_proc	Double
Double:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	fgets
	leaq	-112(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtod
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	addq	$144, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	PrintCPF
	.def	PrintCPF;	.scl	2;	.type	32;	.endef
	.seh_proc	PrintCPF
PrintCPF:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L25
.L28:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	call	putchar
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -8(%rbp)
	cmpq	$8, %rax
	je	.L26
	cmpq	$8, %rax
	ja	.L25
	cmpq	$2, %rax
	je	.L27
	cmpq	$5, %rax
	jne	.L25
.L27:
	movl	$46, %ecx
	call	putchar
	jmp	.L25
.L26:
	movl	$47, %ecx
	call	putchar
	nop
.L25:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L28
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	PrintPlaca
	.def	PrintPlaca;	.scl	2;	.type	32;	.endef
	.seh_proc	PrintPlaca
PrintPlaca:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L30
.L32:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	call	putchar
	cmpq	$2, -8(%rbp)
	jne	.L31
	movl	$45, %ecx
	call	putchar
.L31:
	addq	$1, -8(%rbp)
.L30:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L32
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	fprint_err
	.def	fprint_err;	.scl	2;	.type	32;	.endef
	.seh_proc	fprint_err
fprint_err:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$50, %ecx
	call	String
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movabsq	$2337193523565195845, %rdx
	movq	%rdx, (%rax)
	movabsq	$9132996470923552, %rcx
	movq	%rcx, 7(%rax)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	perror
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	difftime;	.scl	3;	.type	32;	.endef
	.seh_proc	difftime
difftime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__difftime64(%rip), %rax
	call	*%rax
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	mktime;	.scl	3;	.type	32;	.endef
	.seh_proc	mktime
mktime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__mktime64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaDateTime
	.def	CriaDateTime;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaDateTime
CriaDateTime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	$36, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L39
	movl	$0, %eax
	jmp	.L40
.L39:
	movq	32(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	subl	$1900, %eax
	movl	%eax, -12(%rbp)
	movq	24(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	subl	$1, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 24(%rax)
	movq	16(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movq	-8(%rbp), %rdx
	movl	%eax, 12(%rdx)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	call	Bissexto
	testl	%eax, %eax
	je	.L41
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
.L42:
	movq	-8(%rbp), %rax
.L40:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC3:
	.ascii "%a %d %b %Y\0"
.LC4:
	.ascii "\12\0"
.LC5:
	.ascii "%s\0"
	.text
	.globl	ExibeData
	.def	ExibeData;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeData
ExibeData:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC3(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	strftime
	leaq	-112(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$144, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC6:
	.ascii "%a%d%b%Y\0"
	.text
	.globl	FormataData
	.def	FormataData;	.scl	2;	.type	32;	.endef
	.seh_proc	FormataData
FormataData:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$100, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	leaq	.LC6(%rip), %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	strftime
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC7:
	.ascii "\12Dia: \0"
.LC8:
	.ascii "Mes: \0"
.LC9:
	.ascii "Ano: \0"
	.text
	.globl	NovaData
	.def	NovaData;	.scl	2;	.type	32;	.endef
	.seh_proc	NovaData
NovaData:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$64, %rsp
	.seh_stackalloc	64
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	.seh_endprologue
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-5(%rbp), %rax
	movq	%rdx, %r8
	movl	$5, %edx
	movq	%rax, %rcx
	call	fgets
	leaq	-5(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movb	$0, -5(%rbp,%rax)
	leaq	-5(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movl	%eax, %ecx
	call	ValidaDia
	testl	%eax, %eax
	jne	.L47
	movl	$0, %eax
	jmp	.L51
.L47:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-10(%rbp), %rax
	movq	%rdx, %r8
	movl	$5, %edx
	movq	%rax, %rcx
	call	fgets
	leaq	-10(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movb	$0, -10(%rbp,%rax)
	leaq	-10(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movl	%eax, %ebx
	leaq	-5(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	ValidaMes
	testl	%eax, %eax
	jne	.L49
	movl	$0, %eax
	jmp	.L51
.L49:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-20(%rbp), %rax
	movq	%rdx, %r8
	movl	$10, %edx
	movq	%rax, %rcx
	call	fgets
	leaq	-20(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movb	$0, -20(%rbp,%rax)
	leaq	-20(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movl	%eax, %esi
	leaq	-10(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movl	%eax, %ebx
	leaq	-5(%rbp), %rax
	movl	$10, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	strtol
	movl	%esi, %r8d
	movl	%ebx, %edx
	movl	%eax, %ecx
	call	ValidaAno
	testl	%eax, %eax
	jne	.L50
	movl	$0, %eax
	jmp	.L51
.L50:
	leaq	-20(%rbp), %rcx
	leaq	-10(%rbp), %rdx
	leaq	-5(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	CriaDateTime
.L51:
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rbp
	ret
	.seh_endproc
	.globl	ValidaDia
	.def	ValidaDia;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaDia
ValidaDia:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$0, 16(%rbp)
	jle	.L53
	cmpl	$31, 16(%rbp)
	jle	.L54
.L53:
	movl	$0, %eax
	jmp	.L55
.L54:
	movl	$1, %eax
.L55:
	popq	%rbp
	ret
	.seh_endproc
	.globl	ValidaMes
	.def	ValidaMes;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaMes
ValidaMes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$0, 24(%rbp)
	jle	.L57
	cmpl	$12, 24(%rbp)
	jle	.L58
.L57:
	movl	$0, %eax
	jmp	.L59
.L58:
	cmpl	$2, 24(%rbp)
	jne	.L60
	cmpl	$29, 16(%rbp)
	jle	.L60
	movl	$0, %eax
	jmp	.L59
.L60:
	cmpl	$4, 24(%rbp)
	je	.L61
	cmpl	$6, 24(%rbp)
	je	.L61
	cmpl	$9, 24(%rbp)
	je	.L61
	cmpl	$11, 24(%rbp)
	jne	.L62
.L61:
	cmpl	$31, 16(%rbp)
	jne	.L62
	movl	$0, %eax
	jmp	.L59
.L62:
	movl	$1, %eax
.L59:
	popq	%rbp
	ret
	.seh_endproc
	.globl	ValidaAno
	.def	ValidaAno;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaAno
ValidaAno:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	cmpl	$1899, 32(%rbp)
	jle	.L64
	cmpl	$3000, 32(%rbp)
	jle	.L65
.L64:
	movl	$0, %eax
	jmp	.L66
.L65:
	cmpl	$29, 16(%rbp)
	jne	.L67
	cmpl	$2, 24(%rbp)
	jne	.L67
	movl	32(%rbp), %eax
	movl	%eax, %ecx
	call	Bissexto
	testl	%eax, %eax
	jne	.L67
	movl	$0, %eax
	jmp	.L66
.L67:
	movl	$1, %eax
.L66:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	Bissexto
	.def	Bissexto;	.scl	2;	.type	32;	.endef
	.seh_proc	Bissexto
Bissexto:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$7, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$400, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.L69
	movl	16(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$5, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$100, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	jne	.L69
	movl	$1, %eax
	jmp	.L70
.L69:
	movl	16(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L71
	movl	16(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1374389535, %rax, %rax
	shrq	$32, %rax
	sarl	$5, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$100, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	testl	%eax, %eax
	je	.L71
	movl	$1, %eax
	jmp	.L70
.L71:
	movl	$0, %eax
.L70:
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC10:
	.ascii "\12Digite a Data: \0"
.LC11:
	.ascii "\12Data Invalida!!!\0"
	.text
	.globl	CriaDataValida
	.def	CriaDataValida;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaDataValida
CriaDataValida:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
.L74:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	NovaData
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L73
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	puts
.L73:
	cmpq	$0, -8(%rbp)
	je	.L74
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	DiferencaEmDias
	.def	DiferencaEmDias;	.scl	2;	.type	32;	.endef
	.seh_proc	DiferencaEmDias
DiferencaEmDias:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	difftime
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	DataRangeInRange
	.def	DataRangeInRange;	.scl	2;	.type	32;	.endef
	.seh_proc	DataRangeInRange
DataRangeInRange:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rax, -16(%rbp)
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rax, -24(%rbp)
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.L79
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jg	.L79
	movl	$1, %eax
	jmp	.L80
.L79:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.L81
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.L81
	movl	$-1, %eax
	jmp	.L80
.L81:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.L82
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.L82
	movl	$-1, %eax
	jmp	.L80
.L82:
	movl	$0, %eax
.L80:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC13:
	.ascii "\12CPF deve conter 11 caracteres!!!\0"
.LC14:
	.ascii "\12Digite apenas n\303\272meros!!!\0"
	.text
	.globl	ValidaCPF
	.def	ValidaCPF;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaCPF
ValidaCPF:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, -16(%rbp)
	cmpq	$10, -16(%rbp)
	ja	.L84
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L85
.L84:
	movq	$0, -8(%rbp)
	jmp	.L86
.L88:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	.L87
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L85
.L87:
	addq	$1, -8(%rbp)
.L86:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L88
	movl	$0, %eax
.L85:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC15:
	.ascii "\12Nome deve ser maior do que 3 caracteres!!!\0"
	.align 8
.LC16:
	.ascii "\12Nome n\303\243o deve conter n\303\272meros!!!\0"
	.text
	.globl	ValidaNome
	.def	ValidaNome;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaNome
ValidaNome:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, -16(%rbp)
	cmpq	$2, -16(%rbp)
	ja	.L90
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L91
.L90:
	movq	$0, -8(%rbp)
	jmp	.L92
.L94:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L93
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L93
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L91
.L93:
	addq	$1, -8(%rbp)
.L92:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L94
	movl	$0, %eax
.L91:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC17:
	.ascii "\12Categoria inv\303\241lida!!!\0"
	.text
	.globl	ValidaCategoria
	.def	ValidaCategoria;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaCategoria
ValidaCategoria:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L96
.L99:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$65, %al
	je	.L97
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$66, %al
	je	.L97
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$67, %al
	je	.L97
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$68, %al
	je	.L97
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L97
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L98
.L97:
	addq	$1, -8(%rbp)
.L96:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L99
	movl	$0, %eax
.L98:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC18:
	.ascii "\12Digite apenas letras e n\303\272meros!!!\0"
	.align 8
.LC19:
	.ascii "\12Placa deve conter 7 caracteres!!!\0"
.LC20:
	.ascii "\12Placa Inv\303\241lida!!!\0"
	.text
	.globl	ValidaPlaca
	.def	ValidaPlaca;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaPlaca
ValidaPlaca:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	movq	%rax, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L101
.L104:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isalnum(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L102
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L103
.L102:
	addq	$1, -8(%rbp)
.L101:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L104
	cmpq	$7, -32(%rbp)
	je	.L105
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L103
.L105:
	movq	$0, -16(%rbp)
	jmp	.L106
.L108:
	movq	16(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isalpha(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L107
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L103
.L107:
	addq	$1, -16(%rbp)
.L106:
	cmpq	$2, -16(%rbp)
	jbe	.L108
	movq	$3, -24(%rbp)
	jmp	.L109
.L112:
	cmpq	$4, -24(%rbp)
	je	.L113
	movq	16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	.L111
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L103
.L113:
	nop
.L111:
	addq	$1, -24(%rbp)
.L109:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jb	.L112
	movl	$0, %eax
.L103:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaCliente
	.def	CriaCliente;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaCliente
CriaCliente:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$640, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L115
	movl	$0, %eax
	jmp	.L116
.L115:
	movq	-8(%rbp), %rax
	movq	$0, 632(%rax)
	movq	-8(%rbp), %rax
.L116:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaClienteArgs
	.def	CriaClienteArgs;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaClienteArgs
CriaClienteArgs:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
	movl	$640, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L118
	movl	$0, %eax
	jmp	.L119
.L118:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	movq	-8(%rbp), %rax
	leaq	20(%rax), %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	movq	-8(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	movq	-8(%rbp), %rax
	leaq	620(%rax), %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	movq	-8(%rbp), %rax
	movq	$0, 632(%rax)
	movq	-8(%rbp), %rax
.L119:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaListaClientes
	.def	CriaListaClientes;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaListaClientes
CriaListaClientes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L121
	movl	$0, %eax
	jmp	.L122
.L121:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L122:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaListaClientesArgs
	.def	CriaListaClientesArgs;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaListaClientesArgs
CriaListaClientesArgs:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L124
	movl	$0, %eax
	jmp	.L125
.L124:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-8(%rbp), %rax
.L125:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC21:
	.ascii "\12Digite o CPF (apenas n\303\272meros): \0"
.LC22:
	.ascii "0\0"
	.text
	.globl	CPFInput
	.def	CPFInput;	.scl	2;	.type	32;	.endef
	.seh_proc	CPFInput
CPFInput:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L131:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %r8
	movl	$20, %edx
	movq	%rax, %rcx
	call	fgets
	movq	16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movq	16(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L127
	movl	$1, %eax
	jmp	.L128
.L127:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ValidaCPF
	testl	%eax, %eax
	jne	.L133
	movl	$0, %eax
	jmp	.L128
.L133:
	nop
	jmp	.L131
.L128:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC23:
	.ascii "\12Digite o Nome: \0"
	.text
	.globl	NomeInput
	.def	NomeInput;	.scl	2;	.type	32;	.endef
	.seh_proc	NomeInput
NomeInput:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L139:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %r8
	movl	$100, %edx
	movq	%rax, %rcx
	call	fgets
	movq	16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movq	16(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L135
	movl	$1, %eax
	jmp	.L136
.L135:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ValidaNome
	testl	%eax, %eax
	jne	.L141
	movl	$0, %eax
	jmp	.L136
.L141:
	nop
	jmp	.L139
.L136:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC24:
	.ascii "\12Digite o Endere\303\247o: \0"
	.text
	.globl	EnderecoInput
	.def	EnderecoInput;	.scl	2;	.type	32;	.endef
	.seh_proc	EnderecoInput
EnderecoInput:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %r8
	movl	$500, %edx
	movq	%rax, %rcx
	call	fgets
	movq	16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movq	16(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L143
	movl	$1, %eax
	jmp	.L144
.L143:
	movl	$0, %eax
.L144:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "\12Digite a Categoria da Habilita\303\247\303\243o (A B C D): \0"
	.text
	.globl	CategoriaInput
	.def	CategoriaInput;	.scl	2;	.type	32;	.endef
	.seh_proc	CategoriaInput
CategoriaInput:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L153:
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %r8
	movl	$10, %edx
	movq	%rax, %rcx
	call	fgets
	movq	16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movq	16(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L146
	movl	$1, %eax
	jmp	.L147
.L146:
	movq	$0, -8(%rbp)
	jmp	.L148
.L150:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isupper(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L149
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_toupper(%rip), %rax
	call	*%rax
	movl	%eax, %ecx
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L149:
	addq	$1, -8(%rbp)
.L148:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	strlen
	cmpq	%rax, -8(%rbp)
	jb	.L150
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ValidaCategoria
	testl	%eax, %eax
	jne	.L155
	movl	$0, %eax
	jmp	.L147
.L155:
	nop
	jmp	.L153
.L147:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC26:
	.ascii "\12Nome      : %s\0"
.LC27:
	.ascii "\12CPF       : \0"
.LC28:
	.ascii "\12Endere\303\247o  : %s\0"
.LC29:
	.ascii "\12Categoria : %s\0"
	.align 8
.LC30:
	.ascii "\12====================================================\0"
	.text
	.globl	ExibeCliente
	.def	ExibeCliente;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeCliente
ExibeCliente:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	PrintCPF
	movq	16(%rbp), %rax
	addq	$120, %rax
	movq	%rax, %rdx
	leaq	.LC28(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	addq	$620, %rax
	movq	%rax, %rdx
	leaq	.LC29(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	puts
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ClientePorCPF
	.def	ClientePorCPF;	.scl	2;	.type	32;	.endef
	.seh_proc	ClientePorCPF
ClientePorCPF:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L158
.L161:
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L159
	movq	-8(%rbp), %rax
	jmp	.L160
.L159:
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -8(%rbp)
.L158:
	cmpq	$0, -8(%rbp)
	jne	.L161
	movl	$0, %eax
.L160:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ClonaCliente
	.def	ClonaCliente;	.scl	2;	.type	32;	.endef
	.seh_proc	ClonaCliente
ClonaCliente:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	leaq	620(%rax), %r8
	movq	16(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	16(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	CriaClienteArgs
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 632(%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	SizeString
	.def	SizeString;	.scl	2;	.type	32;	.endef
	.seh_proc	SizeString
SizeString:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	cmpl	$49, 16(%rbp)
	jne	.L165
	movl	$100, %eax
	jmp	.L166
.L165:
	cmpl	$50, 16(%rbp)
	jne	.L167
	movl	$500, %eax
	jmp	.L166
.L167:
	cmpl	$51, 16(%rbp)
	jne	.L168
	movl	$10, %eax
	jmp	.L166
.L168:
	movl	$0, %eax
.L166:
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC31:
	.ascii "\12http ERROR: 404 - Cliente NOT Found!!!\0"
	.text
	.globl	ExibeClientePorCPF
	.def	ExibeClientePorCPF;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeClientePorCPF
ExibeClientePorCPF:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	CPFInput
	testl	%eax, %eax
	jne	.L174
	leaq	-32(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ClientePorCPF
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L172
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L169
.L172:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeCliente
	jmp	.L169
.L174:
	nop
.L169:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ExibeTodosClientes
	.def	ExibeTodosClientes;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeTodosClientes
ExibeTodosClientes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L176
.L177:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeCliente
	movl	$10, %ecx
	call	putchar
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -8(%rbp)
.L176:
	cmpq	$0, -8(%rbp)
	jne	.L177
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC32:
	.ascii "\12O CPF informado j\303\241 se encontra cadastrado no sistema!!!\0"
	.text
	.globl	NovoCliente
	.def	NovoCliente;	.scl	2;	.type	32;	.endef
	.seh_proc	NovoCliente
NovoCliente:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$704, %rsp
	.seh_stackalloc	704
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	movq	%rcx, 592(%rbp)
	call	cleanScreen
	leaq	544(%rbp), %rax
	movq	%rax, %rcx
	call	CPFInput
	testl	%eax, %eax
	je	.L179
	movl	$0, %eax
	jmp	.L185
.L179:
	leaq	544(%rbp), %rdx
	movq	592(%rbp), %rax
	movq	%rax, %rcx
	call	ClientePorCPF
	testq	%rax, %rax
	je	.L181
	leaq	.LC32(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L185
.L181:
	leaq	432(%rbp), %rax
	movq	%rax, %rcx
	call	NomeInput
	testl	%eax, %eax
	je	.L182
	movl	$0, %eax
	jmp	.L185
.L182:
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	EnderecoInput
	testl	%eax, %eax
	je	.L183
	movl	$0, %eax
	jmp	.L185
.L183:
	leaq	-90(%rbp), %rax
	movq	%rax, %rcx
	call	CategoriaInput
	testl	%eax, %eax
	je	.L184
	movl	$0, %eax
	jmp	.L185
.L184:
	leaq	-90(%rbp), %r8
	leaq	-80(%rbp), %rcx
	leaq	432(%rbp), %rdx
	leaq	544(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	CriaClienteArgs
.L185:
	addq	$704, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	InsereClienteNaLista
	.def	InsereClienteNaLista;	.scl	2;	.type	32;	.endef
	.seh_proc	InsereClienteNaLista
InsereClienteNaLista:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L192
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L189
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L186
.L189:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L190
.L191:
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -8(%rbp)
.L190:
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	testq	%rax, %rax
	jne	.L191
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 632(%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L186
.L192:
	nop
.L186:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	InsereCliente
	.def	InsereCliente;	.scl	2;	.type	32;	.endef
	.seh_proc	InsereCliente
InsereCliente:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L196
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	NovoCliente
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereClienteNaLista
	jmp	.L193
.L196:
	nop
.L193:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC33:
	.ascii "\12Qual informa\303\247\303\243o deseja alterar?\0"
.LC34:
	.ascii "\12 1 - Nome\0"
.LC35:
	.ascii "\12 2 - Endere\303\247o\0"
.LC36:
	.ascii "\12 3 - Categoria\0"
.LC37:
	.ascii "\12 0 - Retornar\0"
.LC38:
	.ascii "\12\12Escolha: \0"
.LC39:
	.ascii "\12INV\303\201LIDO!!!\0"
	.text
	.globl	AtualizaCliente
	.def	AtualizaCliente;	.scl	2;	.type	32;	.endef
	.seh_proc	AtualizaCliente
AtualizaCliente:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	CPFInput
	testl	%eax, %eax
	jne	.L215
	leaq	-48(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ClientePorCPF
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L200
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L197
.L200:
	call	cleanScreen
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeCliente
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC34(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC35(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC36(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC37(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC38(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -12(%rbp)
	call	clearBuffer
	cmpl	$48, -12(%rbp)
	je	.L216
	cmpl	$48, -12(%rbp)
	jle	.L203
	cmpl	$51, -12(%rbp)
	jle	.L204
.L203:
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L205
.L204:
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	call	SizeString
	cltq
	movq	%rax, %rcx
	call	String
	movq	%rax, -24(%rbp)
	cmpl	$51, -12(%rbp)
	je	.L206
	cmpl	$51, -12(%rbp)
	jg	.L217
	cmpl	$49, -12(%rbp)
	je	.L208
	cmpl	$50, -12(%rbp)
	je	.L209
	jmp	.L217
.L208:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	NomeInput
	testl	%eax, %eax
	jne	.L218
	movq	-8(%rbp), %rax
	leaq	20(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	jmp	.L218
.L209:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	EnderecoInput
	testl	%eax, %eax
	jne	.L219
	movq	-8(%rbp), %rax
	leaq	120(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	jmp	.L219
.L206:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	CategoriaInput
	testl	%eax, %eax
	jne	.L220
	movq	-8(%rbp), %rax
	leaq	620(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	jmp	.L220
.L217:
	nop
	jmp	.L211
.L218:
	nop
	jmp	.L211
.L219:
	nop
	jmp	.L211
.L220:
	nop
.L211:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L205:
	jmp	.L200
.L215:
	nop
	jmp	.L197
.L216:
	nop
.L197:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC40:
	.ascii "\12Tem certeza? [s/S]: \0"
.LC41:
	.ascii "\12Removido!\0"
	.text
	.globl	RemoveCliente
	.def	RemoveCliente;	.scl	2;	.type	32;	.endef
	.seh_proc	RemoveCliente
RemoveCliente:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	CPFInput
	testl	%eax, %eax
	jne	.L234
	movq	$0, -8(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L224
.L226:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -16(%rbp)
.L224:
	cmpq	$0, -16(%rbp)
	je	.L225
	movq	-16(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L226
.L225:
	cmpq	$0, -8(%rbp)
	jne	.L227
	movq	-16(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L228
.L227:
	cmpq	$0, -16(%rbp)
	jne	.L229
.L228:
	leaq	.LC31(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L221
.L229:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeCliente
	leaq	.LC40(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -20(%rbp)
	call	clearBuffer
	cmpl	$115, -20(%rbp)
	je	.L230
	cmpl	$83, -20(%rbp)
	jne	.L235
.L230:
	cmpq	$0, -8(%rbp)
	jne	.L231
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	632(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L232
.L231:
	movq	-16(%rbp), %rax
	movq	632(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 632(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L232:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	.LC41(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L221
.L234:
	nop
	jmp	.L221
.L235:
	nop
.L221:
	addq	$96, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC42:
	.ascii "wb\0"
.LC43:
	.ascii "CLIENTES\0"
	.text
	.globl	PersistenciaClientes
	.def	PersistenciaClientes;	.scl	2;	.type	32;	.endef
	.seh_proc	PersistenciaClientes
PersistenciaClientes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L242
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L239
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	call	fprint_err
	jmp	.L236
.L239:
	movq	$0, -16(%rbp)
	jmp	.L240
.L241:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$640, %edx
	movq	%rax, %rcx
	call	fwrite
	movq	-8(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L240:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L241
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	jmp	.L236
.L242:
	nop
.L236:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC44:
	.ascii "rb\0"
	.text
	.globl	ReadClientes
	.def	ReadClientes;	.scl	2;	.type	32;	.endef
	.seh_proc	ReadClientes
ReadClientes:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$688, %rsp
	.seh_stackalloc	688
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	CriaListaClientes
	movq	%rax, 552(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, 544(%rbp)
	cmpq	$0, 544(%rbp)
	jne	.L244
	leaq	.LC43(%rip), %rax
	movq	%rax, %rcx
	call	fprint_err
	movq	552(%rbp), %rax
	jmp	.L247
.L244:
	movq	544(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$640, %edx
	movq	%rax, %rcx
	call	fread
.L246:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	ClonaCliente
	movq	%rax, %rdx
	movq	552(%rbp), %rax
	movq	%rax, %rcx
	call	InsereClienteNaLista
	movq	544(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$640, %edx
	movq	%rax, %rcx
	call	fread
	movq	544(%rbp), %rax
	movq	%rax, %rcx
	call	feof
	testl	%eax, %eax
	je	.L246
	movq	544(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movq	552(%rbp), %rax
.L247:
	addq	$688, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC45:
	.ascii "===============================\0"
.LC46:
	.ascii "      CLIENTES\12\0"
.LC47:
	.ascii "  1 - Cadastrar\0"
.LC48:
	.ascii "  2 - Exibir Um\0"
.LC49:
	.ascii "  3 - Exibir Todos\0"
.LC50:
	.ascii "  4 - Atualizar\0"
.LC51:
	.ascii "  5 - Remover\0"
.LC52:
	.ascii "  0 - Retornar\0"
.LC53:
	.ascii "\12Escolha: \0"
.LC54:
	.ascii "\12 INV\303\201LIDO!!!\0"
	.text
	.globl	MenuClientes
	.def	MenuClientes;	.scl	2;	.type	32;	.endef
	.seh_proc	MenuClientes
MenuClientes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L258:
	call	cleanScreen
	leaq	.LC45(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC46(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC49(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC50(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC51(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -4(%rbp)
	call	clearBuffer
	movl	-4(%rbp), %eax
	subl	$48, %eax
	cmpl	$5, %eax
	ja	.L249
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L251(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L251(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L251:
	.long	.L259-.L251
	.long	.L255-.L251
	.long	.L254-.L251
	.long	.L253-.L251
	.long	.L252-.L251
	.long	.L250-.L251
	.text
.L255:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereCliente
	call	pause
	jmp	.L257
.L254:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeClientePorCPF
	call	pause
	jmp	.L257
.L253:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeTodosClientes
	call	pause
	jmp	.L257
.L252:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	AtualizaCliente
	jmp	.L257
.L250:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	RemoveCliente
	call	pause
	jmp	.L257
.L249:
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L257
.L259:
	nop
.L257:
	cmpl	$48, -4(%rbp)
	jne	.L258
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaVeiculo
	.def	CriaVeiculo;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaVeiculo
CriaVeiculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$136, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L261
	movl	$0, %eax
	jmp	.L262
.L261:
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
.L262:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaVeiculoArgs
	.def	CriaVeiculoArgs;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaVeiculoArgs
CriaVeiculoArgs:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
	movl	$136, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L264
	movl	$0, %eax
	jmp	.L265
.L264:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	movq	-8(%rbp), %rax
	leaq	10(%rax), %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	movq	-8(%rbp), %rax
	leaq	60(%rax), %rcx
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	movq	-8(%rbp), %rax
	movl	40(%rbp), %edx
	movl	%edx, 112(%rax)
	movq	-8(%rbp), %rax
	movsd	48(%rbp), %xmm0
	movsd	%xmm0, 120(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
.L265:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaListaVeiculos
	.def	CriaListaVeiculos;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaListaVeiculos
CriaListaVeiculos:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L267
	movl	$0, %eax
	jmp	.L268
.L267:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L268:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaListaVeiculosArgs
	.def	CriaListaVeiculosArgs;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaListaVeiculosArgs
CriaListaVeiculosArgs:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L270
	movl	$0, %eax
	jmp	.L271
.L270:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-8(%rbp), %rax
.L271:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC55:
	.ascii "\12Digite a Placa: \0"
	.text
	.globl	PlacaInput
	.def	PlacaInput;	.scl	2;	.type	32;	.endef
	.seh_proc	PlacaInput
PlacaInput:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L280:
	leaq	.LC55(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rdx, %r8
	movl	$10, %edx
	movq	%rax, %rcx
	call	fgets
	movq	16(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movq	16(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	16(%rbp), %rax
	leaq	.LC22(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L273
	movl	$1, %eax
	jmp	.L274
.L273:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ValidaPlaca
	testl	%eax, %eax
	jne	.L282
	movq	$0, -8(%rbp)
	jmp	.L277
.L279:
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_isupper(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	jne	.L278
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %ecx
	movq	__imp_toupper(%rip), %rax
	call	*%rax
	movl	%eax, %ecx
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
.L278:
	addq	$1, -8(%rbp)
.L277:
	cmpq	$4, -8(%rbp)
	jbe	.L279
	movl	$0, %eax
	jmp	.L274
.L282:
	nop
	jmp	.L280
.L274:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC56:
	.ascii "\12Placa       : \0"
.LC57:
	.ascii "\12Montadora   : %s\0"
.LC58:
	.ascii "\12Modelo      : %s\0"
.LC59:
	.ascii "\12Ano         : %4d\0"
.LC60:
	.ascii "\12Di\303\241ria (R$) : %.2lf\0"
	.text
	.globl	ExibeVeiculo
	.def	ExibeVeiculo;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeVeiculo
ExibeVeiculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC56(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	PrintPlaca
	movq	16(%rbp), %rax
	addq	$10, %rax
	movq	%rax, %rdx
	leaq	.LC57(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	addq	$60, %rax
	movq	%rax, %rdx
	leaq	.LC58(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, %edx
	leaq	.LC59(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	movsd	120(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC60(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	puts
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	VeiculoPorPlaca
	.def	VeiculoPorPlaca;	.scl	2;	.type	32;	.endef
	.seh_proc	VeiculoPorPlaca
VeiculoPorPlaca:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L285
.L288:
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L286
	movq	-8(%rbp), %rax
	jmp	.L287
.L286:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
.L285:
	cmpq	$0, -8(%rbp)
	jne	.L288
	movl	$0, %eax
.L287:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ClonaVeiculo
	.def	ClonaVeiculo;	.scl	2;	.type	32;	.endef
	.seh_proc	ClonaVeiculo
ClonaVeiculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movsd	120(%rax), %xmm0
	movq	16(%rbp), %rax
	movl	112(%rax), %ecx
	movq	16(%rbp), %rax
	leaq	60(%rax), %r8
	movq	16(%rbp), %rax
	leaq	10(%rax), %rdx
	movq	16(%rbp), %rax
	movsd	%xmm0, 32(%rsp)
	movl	%ecx, %r9d
	movq	%rax, %rcx
	call	CriaVeiculoArgs
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC61:
	.ascii "\12http ERROR: 404 - Ve\303\255culo NOT Found!!!\0"
	.text
	.globl	ExibeVeiculoPorPlaca
	.def	ExibeVeiculoPorPlaca;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeVeiculoPorPlaca
ExibeVeiculoPorPlaca:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-18(%rbp), %rax
	movq	%rax, %rcx
	call	PlacaInput
	testl	%eax, %eax
	jne	.L296
	leaq	-18(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	VeiculoPorPlaca
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L294
	leaq	.LC61(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L291
.L294:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeVeiculo
	jmp	.L291
.L296:
	nop
.L291:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ExibeTodosVeiculos
	.def	ExibeTodosVeiculos;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeTodosVeiculos
ExibeTodosVeiculos:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L298
.L299:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeVeiculo
	movl	$10, %ecx
	call	putchar
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
.L298:
	cmpq	$0, -8(%rbp)
	jne	.L299
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC62:
	.ascii "\12A Placa informada j\303\241 se encontra cadastrada no sistema!!!\0"
.LC63:
	.ascii "\12Digite a Montadora: \0"
.LC64:
	.ascii "\12Digite o Modelo: \0"
.LC65:
	.ascii "\12Digite o ano (YYYY): \0"
	.align 8
.LC66:
	.ascii "\12Digite o valor da di\303\241ria (R$88.88): \0"
	.text
	.globl	NovoVeiculo
	.def	NovoVeiculo;	.scl	2;	.type	32;	.endef
	.seh_proc	NovoVeiculo
NovoVeiculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$192, %rsp
	.seh_stackalloc	192
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	call	cleanScreen
	leaq	-26(%rbp), %rax
	movq	%rax, %rcx
	call	PlacaInput
	testl	%eax, %eax
	je	.L301
	movl	$0, %eax
	jmp	.L304
.L301:
	leaq	-26(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	VeiculoPorPlaca
	testq	%rax, %rax
	je	.L303
	leaq	.LC62(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L304
.L303:
	leaq	.LC63(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %r8
	movl	$50, %edx
	movq	%rax, %rcx
	call	fgets
	leaq	-80(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movb	$0, -80(%rbp,%rax)
	leaq	.LC64(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %r8
	movl	$50, %edx
	movq	%rax, %rcx
	call	fgets
	leaq	-144(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	strcspn
	movb	$0, -144(%rbp,%rax)
	leaq	.LC65(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	Int
	movl	%eax, -4(%rbp)
	leaq	.LC66(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	Double
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %r8d
	leaq	-144(%rbp), %rcx
	leaq	-80(%rbp), %rdx
	leaq	-26(%rbp), %rax
	movsd	-16(%rbp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movl	%r8d, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	CriaVeiculoArgs
.L304:
	addq	$192, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	InsereVeiculoNaLista
	.def	InsereVeiculoNaLista;	.scl	2;	.type	32;	.endef
	.seh_proc	InsereVeiculoNaLista
InsereVeiculoNaLista:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L311
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L308
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L305
.L308:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L309
.L310:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
.L309:
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	testq	%rax, %rax
	jne	.L310
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 128(%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L305
.L311:
	nop
.L305:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	InsereVeiculo
	.def	InsereVeiculo;	.scl	2;	.type	32;	.endef
	.seh_proc	InsereVeiculo
InsereVeiculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L315
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	NovoVeiculo
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereVeiculoNaLista
	jmp	.L312
.L315:
	nop
.L312:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC67:
	.ascii "\12 1 - Ano\0"
.LC68:
	.ascii "\12 2 - Di\303\241ria (R$)\0"
.LC69:
	.ascii "\12Digite o novo valor: \0"
	.text
	.globl	AtualizaVeiculo
	.def	AtualizaVeiculo;	.scl	2;	.type	32;	.endef
	.seh_proc	AtualizaVeiculo
AtualizaVeiculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-22(%rbp), %rax
	movq	%rax, %rcx
	call	PlacaInput
	testl	%eax, %eax
	jne	.L329
	leaq	-22(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	VeiculoPorPlaca
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L319
	leaq	.LC61(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L316
.L319:
	call	cleanScreen
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeVeiculo
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC67(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC68(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC37(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC38(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -12(%rbp)
	call	clearBuffer
	cmpl	$48, -12(%rbp)
	je	.L330
	cmpl	$48, -12(%rbp)
	jle	.L322
	cmpl	$50, -12(%rbp)
	jle	.L323
.L322:
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L324
.L323:
	leaq	.LC69(%rip), %rax
	movq	%rax, %rcx
	call	printf
	cmpl	$49, -12(%rbp)
	je	.L325
	cmpl	$50, -12(%rbp)
	je	.L326
	jmp	.L324
.L325:
	call	Int
	movq	-8(%rbp), %rdx
	movl	%eax, 112(%rdx)
	jmp	.L324
.L326:
	call	Double
	movq	%xmm0, %rax
	movq	-8(%rbp), %rdx
	movq	%rax, 120(%rdx)
	nop
.L324:
	jmp	.L319
.L329:
	nop
	jmp	.L316
.L330:
	nop
.L316:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	RemoveVeiculo
	.def	RemoveVeiculo;	.scl	2;	.type	32;	.endef
	.seh_proc	RemoveVeiculo
RemoveVeiculo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-42(%rbp), %rax
	movq	%rax, %rcx
	call	PlacaInput
	testl	%eax, %eax
	jne	.L344
	movq	$0, -8(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L334
.L336:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
.L334:
	cmpq	$0, -16(%rbp)
	je	.L335
	movq	-16(%rbp), %rax
	leaq	-42(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L336
.L335:
	cmpq	$0, -8(%rbp)
	jne	.L337
	movq	-16(%rbp), %rax
	leaq	-42(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L338
.L337:
	cmpq	$0, -16(%rbp)
	jne	.L339
.L338:
	leaq	.LC61(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L331
.L339:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeVeiculo
	leaq	.LC40(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -20(%rbp)
	call	clearBuffer
	cmpl	$115, -20(%rbp)
	je	.L340
	cmpl	$83, -20(%rbp)
	jne	.L345
.L340:
	cmpq	$0, -8(%rbp)
	jne	.L341
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L342
.L341:
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 128(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L342:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	.LC41(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L331
.L344:
	nop
	jmp	.L331
.L345:
	nop
.L331:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC70:
	.ascii "VEICULOS\0"
	.text
	.globl	PersistenciaVeiculos
	.def	PersistenciaVeiculos;	.scl	2;	.type	32;	.endef
	.seh_proc	PersistenciaVeiculos
PersistenciaVeiculos:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L352
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC70(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L349
	leaq	.LC70(%rip), %rax
	movq	%rax, %rcx
	call	fprint_err
	jmp	.L346
.L349:
	movq	$0, -16(%rbp)
	jmp	.L350
.L351:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$136, %edx
	movq	%rax, %rcx
	call	fwrite
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L350:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L351
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	jmp	.L346
.L352:
	nop
.L346:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ReadVeiculos
	.def	ReadVeiculos;	.scl	2;	.type	32;	.endef
	.seh_proc	ReadVeiculos
ReadVeiculos:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$192, %rsp
	.seh_stackalloc	192
	.seh_endprologue
	call	CriaListaVeiculos
	movq	%rax, -8(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC70(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L354
	leaq	.LC70(%rip), %rax
	movq	%rax, %rcx
	call	fprint_err
	movq	-8(%rbp), %rax
	jmp	.L357
.L354:
	movq	-16(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$136, %edx
	movq	%rax, %rcx
	call	fread
.L356:
	leaq	-160(%rbp), %rax
	movq	%rax, %rcx
	call	ClonaVeiculo
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	InsereVeiculoNaLista
	movq	-16(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$136, %edx
	movq	%rax, %rcx
	call	fread
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	feof
	testl	%eax, %eax
	je	.L356
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movq	-8(%rbp), %rax
.L357:
	addq	$192, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC71:
	.ascii "      VE\303\215CULOS\12\0"
.LC72:
	.ascii "\12 INVALIDO!!!\0"
	.text
	.globl	MenuVeiculos
	.def	MenuVeiculos;	.scl	2;	.type	32;	.endef
	.seh_proc	MenuVeiculos
MenuVeiculos:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L368:
	call	cleanScreen
	leaq	.LC45(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC71(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC48(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC49(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC50(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC51(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -4(%rbp)
	call	clearBuffer
	movl	-4(%rbp), %eax
	subl	$48, %eax
	cmpl	$5, %eax
	ja	.L359
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L361(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L361(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L361:
	.long	.L369-.L361
	.long	.L365-.L361
	.long	.L364-.L361
	.long	.L363-.L361
	.long	.L362-.L361
	.long	.L360-.L361
	.text
.L365:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereVeiculo
	call	pause
	jmp	.L367
.L364:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeVeiculoPorPlaca
	call	pause
	jmp	.L367
.L363:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeTodosVeiculos
	call	pause
	jmp	.L367
.L362:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	AtualizaVeiculo
	jmp	.L367
.L360:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	RemoveVeiculo
	call	pause
	jmp	.L367
.L359:
	leaq	.LC72(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L367
.L369:
	nop
.L367:
	cmpl	$48, -4(%rbp)
	jne	.L368
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaLocacaoArgs
	.def	CriaLocacaoArgs;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaLocacaoArgs
CriaLocacaoArgs:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	movl	$224, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L371
	movl	$0, %eax
	jmp	.L372
.L371:
	movq	-8(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rax, %rcx
	call	strcpy
	movq	-8(%rbp), %rax
	leaq	20(%rax), %rcx
	movq	40(%rbp), %rax
	movq	%rax, %rdx
	call	strcpy
	movq	-8(%rbp), %rax
	movq	48(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movl	32(%rdx), %edx
	movl	%edx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, 68(%rax)
	movq	%rbx, 76(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 84(%rax)
	movq	%rbx, 92(%rax)
	movl	32(%rdx), %edx
	movl	%edx, 100(%rax)
	movq	-8(%rbp), %rax
	movsd	64(%rbp), %xmm0
	movsd	%xmm0, 104(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	GeraChave
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rcx
	call	strcpy
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-8(%rbp), %rax
.L372:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaListaLocacoes
	.def	CriaListaLocacoes;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaListaLocacoes
CriaListaLocacoes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L374
	movl	$0, %eax
	jmp	.L375
.L374:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L375:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaListaLocacoesArgs
	.def	CriaListaLocacoesArgs;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaListaLocacoesArgs
CriaListaLocacoesArgs:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$16, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L377
	movl	$0, %eax
	jmp	.L378
.L377:
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-8(%rbp), %rax
.L378:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaTermoArgs
	.def	CriaTermoArgs;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaTermoArgs
CriaTermoArgs:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$112, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L380
	movl	$0, %eax
	jmp	.L381
.L380:
	movq	-8(%rbp), %rax
	movl	24(%rbp), %edx
	movl	%edx, (%rax)
	movq	16(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rcx
	call	strcpy
	movq	-8(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-8(%rbp), %rax
.L381:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	CriaDicionarioLocacoes
	.def	CriaDicionarioLocacoes;	.scl	2;	.type	32;	.endef
	.seh_proc	CriaDicionarioLocacoes
CriaDicionarioLocacoes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$8, %ecx
	call	malloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L383
	movl	$0, %eax
	jmp	.L384
.L383:
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
.L384:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	GeraChave
	.def	GeraChave;	.scl	2;	.type	32;	.endef
	.seh_proc	GeraChave
GeraChave:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	$100, %ecx
	call	String
	movq	%rax, -8(%rbp)
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	strcpy
	movq	16(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	movq	16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rcx
	call	FormataData
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	movq	16(%rbp), %rax
	addq	$68, %rax
	movq	%rax, %rcx
	call	FormataData
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	strcat
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC73:
	.ascii "\12CPF              : \0"
.LC74:
	.ascii "\12Placa            : \0"
.LC75:
	.ascii "\12Data Loca\303\247\303\243o     : \0"
.LC76:
	.ascii "\12Data Devolu\303\247\303\243o   : \0"
.LC77:
	.ascii "\12Valor Total (R$) : %.2lf\0"
	.text
	.globl	ExibeLocacao
	.def	ExibeLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeLocacao
ExibeLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC73(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	PrintCPF
	leaq	.LC74(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rcx
	call	PrintPlaca
	leaq	.LC75(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rcx
	call	ExibeData
	leaq	.LC76(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	16(%rbp), %rax
	addq	$68, %rax
	movq	%rax, %rcx
	call	ExibeData
	movq	16(%rbp), %rax
	movsd	104(%rax), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC77(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC30(%rip), %rax
	movq	%rax, %rcx
	call	puts
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC78:
	.ascii "\12     LOCACAO %02d\0"
	.text
	.globl	ExibeListaLocacoes
	.def	ExibeListaLocacoes;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeListaLocacoes
ExibeListaLocacoes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L393
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L391
.L392:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movl	%eax, %edx
	leaq	.LC78(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeLocacao
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L391:
	cmpq	$0, -8(%rbp)
	jne	.L392
	jmp	.L388
.L393:
	nop
.L388:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	LocacaoPorChave
	.def	LocacaoPorChave;	.scl	2;	.type	32;	.endef
	.seh_proc	LocacaoPorChave
LocacaoPorChave:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L395
.L398:
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	strcmp
	testl	%eax, %eax
	jne	.L396
	movq	-8(%rbp), %rax
	jmp	.L397
.L396:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L395:
	cmpq	$0, -8(%rbp)
	jne	.L398
	movl	$0, %eax
.L397:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	LocacaoPorIndice
	.def	LocacaoPorIndice;	.scl	2;	.type	32;	.endef
	.seh_proc	LocacaoPorIndice
LocacaoPorIndice:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	cmpl	$0, 32(%rbp)
	jg	.L400
	movl	$0, %eax
	jmp	.L401
.L400:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L402
.L404:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, 32(%rbp)
	jne	.L403
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	LocacaoPorChave
	jmp	.L401
.L403:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
.L402:
	cmpq	$0, -8(%rbp)
	jne	.L404
	movl	$0, %eax
.L401:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ListaLocacaoPorCPF
	.def	ListaLocacaoPorCPF;	.scl	2;	.type	32;	.endef
	.seh_proc	ListaLocacaoPorCPF
ListaLocacaoPorCPF:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	CriaListaLocacoes
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L406
.L408:
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L407
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ClonaLocacao
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereLocacaoNaLista
.L407:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L406:
	cmpq	$0, -8(%rbp)
	jne	.L408
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ListaLocacaoPorPlaca
	.def	ListaLocacaoPorPlaca;	.scl	2;	.type	32;	.endef
	.seh_proc	ListaLocacaoPorPlaca
ListaLocacaoPorPlaca:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	CriaListaLocacoes
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L411
.L413:
	movq	-8(%rbp), %rax
	leaq	20(%rax), %rcx
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	call	strcmp
	testl	%eax, %eax
	jne	.L412
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ClonaLocacao
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereLocacaoNaLista
.L412:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L411:
	cmpq	$0, -8(%rbp)
	jne	.L413
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ListaLocacaoPorData
	.def	ListaLocacaoPorData;	.scl	2;	.type	32;	.endef
	.seh_proc	ListaLocacaoPorData
ListaLocacaoPorData:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	call	CriaListaLocacoes
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L416
.L418:
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$68, %rax
	movq	32(%rbp), %r8
	movq	24(%rbp), %rcx
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	DataRangeInRange
	cmpl	$1, %eax
	jne	.L417
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ClonaLocacao
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereLocacaoNaLista
.L417:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L416:
	cmpq	$0, -8(%rbp)
	jne	.L418
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ClonaLocacao
	.def	ClonaLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	ClonaLocacao
ClonaLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movsd	104(%rax), %xmm0
	movq	16(%rbp), %rax
	leaq	68(%rax), %r8
	movq	16(%rbp), %rax
	leaq	32(%rax), %rcx
	movq	16(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	16(%rbp), %rax
	movsd	%xmm0, 32(%rsp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	CriaLocacaoArgs
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC79:
	.ascii "\12http ERROR: 404 - CPF NOT Found!!!\0"
	.align 8
.LC80:
	.ascii "\12http ERROR: 404 - Placa NOT Found!!!\0"
.LC81:
	.ascii "\12Data Inicial:\0"
.LC82:
	.ascii "\12Data Final:\0"
	.align 8
.LC83:
	.ascii "\12http ERROR: 404 - Locacao NOT Found!!!\0"
.LC84:
	.ascii "\12 INV\303\201LIDO!!!\12\0"
	.text
	.globl	ListaLocacoesPorIndice
	.def	ListaLocacoesPorIndice;	.scl	2;	.type	32;	.endef
	.seh_proc	ListaLocacoesPorIndice
ListaLocacoesPorIndice:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$112, %rsp
	.seh_stackalloc	112
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$99, 24(%rbp)
	je	.L423
	cmpl	$67, 24(%rbp)
	jne	.L424
.L423:
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	CPFInput
	testl	%eax, %eax
	je	.L425
	movl	$0, %eax
	jmp	.L428
.L425:
	leaq	-64(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ListaLocacaoPorCPF
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L427
	leaq	.LC79(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L428
.L427:
	movq	-40(%rbp), %rax
	jmp	.L428
.L424:
	cmpl	$112, 24(%rbp)
	je	.L429
	cmpl	$80, 24(%rbp)
	jne	.L430
.L429:
	leaq	-74(%rbp), %rax
	movq	%rax, %rcx
	call	PlacaInput
	testl	%eax, %eax
	je	.L431
	movl	$0, %eax
	jmp	.L428
.L431:
	leaq	-74(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ListaLocacaoPorPlaca
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L433
	leaq	.LC80(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L428
.L433:
	movq	-32(%rbp), %rax
	jmp	.L428
.L430:
	cmpl	$100, 24(%rbp)
	je	.L434
	cmpl	$68, 24(%rbp)
	jne	.L435
.L434:
	leaq	.LC81(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	CriaDataValida
	movq	%rax, -8(%rbp)
	leaq	.LC82(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	CriaDataValida
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	ListaLocacaoPorData
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L436
	leaq	.LC83(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L428
.L436:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	-24(%rbp), %rax
	jmp	.L428
.L435:
	cmpl	$48, 24(%rbp)
	jne	.L437
	movl	$0, %eax
	jmp	.L428
.L437:
	leaq	.LC84(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
.L428:
	addq	$112, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	InsereNoDicionario
	.def	InsereNoDicionario;	.scl	2;	.type	32;	.endef
	.seh_proc	InsereNoDicionario
InsereNoDicionario:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L444
	movl	32(%rbp), %edx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	CriaTermoArgs
	movq	%rax, -16(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L441
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L438
.L441:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L442
.L443:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -8(%rbp)
.L442:
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	testq	%rax, %rax
	jne	.L443
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 104(%rax)
	jmp	.L438
.L444:
	nop
.L438:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	MapListaParaDicionario
	.def	MapListaParaDicionario;	.scl	2;	.type	32;	.endef
	.seh_proc	MapListaParaDicionario
MapListaParaDicionario:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	call	CriaDicionarioLocacoes
	movq	%rax, -24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L446
.L447:
	movl	-12(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	%eax, %r8d
	call	InsereNoDicionario
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L446:
	cmpq	$0, -8(%rbp)
	jne	.L447
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC85:
	.ascii "\12Selecione o Indexador:\0"
.LC86:
	.ascii "\12 CPF   [c/C]\0"
.LC87:
	.ascii "\12 Placa [p/P]\0"
.LC88:
	.ascii "\12 Data  [d/D]\0"
.LC89:
	.ascii "\12 0 - Retorna\0"
.LC90:
	.ascii "\12--> \0"
	.text
	.globl	TelaLocacaoIndex
	.def	TelaLocacaoIndex;	.scl	2;	.type	32;	.endef
	.seh_proc	TelaLocacaoIndex
TelaLocacaoIndex:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movl	%r9d, 40(%rbp)
.L454:
	call	cleanScreen
	leaq	.LC85(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC86(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC87(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC88(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC89(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC90(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -4(%rbp)
	call	clearBuffer
	cmpl	$48, -4(%rbp)
	je	.L455
	movl	-4(%rbp), %edx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ListaLocacoesPorIndice
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeListaLocacoes
	cmpl	$1, 40(%rbp)
	jne	.L452
	cmpq	$0, -16(%rbp)
	je	.L452
	movq	-16(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	AtualizaLocacao
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L449
.L452:
	cmpl	$2, 40(%rbp)
	jne	.L453
	cmpq	$0, -16(%rbp)
	je	.L453
	movq	32(%rbp), %r8
	movq	24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	RemoveLocacao
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L449
.L453:
	call	pause
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L454
.L455:
	nop
.L449:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC91:
	.ascii "\12Digite 0 para cancelar!\0"
.LC92:
	.ascii "\12Data da Loca\303\247\303\243o: \0"
.LC93:
	.ascii "\12Data da Devolu\303\247\303\243o: \0"
	.text
	.globl	NovaLocacao
	.def	NovaLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	NovaLocacao
NovaLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.L465:
	call	cleanScreen
	leaq	.LC91(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	CPFInput
	testl	%eax, %eax
	je	.L457
	movl	$0, %eax
	jmp	.L466
.L457:
	leaq	-64(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ClientePorCPF
	testq	%rax, %rax
	jne	.L459
	leaq	.LC79(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L460
.L459:
	leaq	-74(%rbp), %rax
	movq	%rax, %rcx
	call	PlacaInput
	testl	%eax, %eax
	je	.L461
	movl	$0, %eax
	jmp	.L466
.L461:
	leaq	-74(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	VeiculoPorPlaca
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L462
	leaq	.LC80(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L460
.L462:
	leaq	.LC92(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	CriaDataValida
	movq	%rax, -16(%rbp)
	leaq	.LC93(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	CriaDataValida
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	ValidaDataLocacao
	testl	%eax, %eax
	jne	.L463
	call	pause
	jmp	.L460
.L463:
	movq	-8(%rbp), %rax
	movsd	120(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	nop
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	DiferencaEmDias
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	-32(%rbp), %xmm0
	movq	-24(%rbp), %r8
	movq	-16(%rbp), %rcx
	leaq	-74(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movsd	%xmm0, 32(%rsp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	CriaLocacaoArgs
	jmp	.L466
.L460:
	jmp	.L465
.L466:
	subq	$-128, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	InsereLocacaoNaLista
	.def	InsereLocacaoNaLista;	.scl	2;	.type	32;	.endef
	.seh_proc	InsereLocacaoNaLista
InsereLocacaoNaLista:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	cmpq	$0, 24(%rbp)
	je	.L473
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L470
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L467
.L470:
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L471
.L472:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L471:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	testq	%rax, %rax
	jne	.L472
	movq	-8(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 216(%rax)
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L467
.L473:
	nop
.L467:
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC94:
	.ascii "\12ERRO: Existe uma Loca\303\247\303\243o com as mesmas informa\303\247\303\265es no sistema...\0"
	.align 8
.LC95:
	.ascii "\12ERRO: Datas informadas conflitam com registros anteriores!!!\0"
	.text
	.globl	InsereLocacao
	.def	InsereLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	InsereLocacao
InsereLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	cmpq	$0, 32(%rbp)
	je	.L480
	cmpq	$0, 16(%rbp)
	je	.L480
	cmpq	$0, 24(%rbp)
	je	.L480
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	NovaLocacao
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L478
	movq	-8(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	LocacaoPorChave
	testq	%rax, %rax
	je	.L478
	leaq	.LC94(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L474
.L478:
	cmpq	$0, -8(%rbp)
	je	.L479
	movq	-8(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	ValidaDataRange
	testl	%eax, %eax
	jne	.L479
	leaq	.LC95(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L474
.L479:
	movq	-8(%rbp), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	InsereLocacaoNaLista
	jmp	.L474
.L480:
	nop
.L474:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC96:
	.ascii "\12Digite o \303\255ndice da Loca\303\247\303\243o que deseja alterar: \0"
.LC97:
	.ascii "\12 1 - Valor Di\303\241ria\0"
	.text
	.globl	AtualizaLocacao
	.def	AtualizaLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	AtualizaLocacao
AtualizaLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$80, %rsp
	.seh_stackalloc	80
	leaq	64(%rsp), %rbp
	.seh_setframe	%rbp, 64
	movaps	%xmm6, 0(%rbp)
	.seh_savexmm	%xmm6, 64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
.L485:
	leaq	.LC96(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	Int
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.L490
	movl	-4(%rbp), %eax
	cltq
	movq	40(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L484
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	call	puts
.L484:
	movl	-4(%rbp), %eax
	cltq
	movq	40(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L485
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	MapListaParaDicionario
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %ecx
	movq	32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	LocacaoPorIndice
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L489:
	call	cleanScreen
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeLocacao
	leaq	.LC33(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC97(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC37(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC38(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -28(%rbp)
	call	clearBuffer
	cmpl	$48, -28(%rbp)
	je	.L491
	cmpl	$49, -28(%rbp)
	je	.L487
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L488
.L487:
	leaq	.LC69(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	Double
	movapd	%xmm0, %xmm6
	movq	-24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$68, %rax
	movq	%rax, %rcx
	call	DiferencaEmDias
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm6, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 104(%rax)
.L488:
	jmp	.L489
.L490:
	nop
	jmp	.L481
.L491:
	nop
.L481:
	movaps	0(%rbp), %xmm6
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC98:
	.ascii "\12Digite o \303\255ndice da Loca\303\247\303\243o que deseja remover: \0"
	.text
	.globl	RemoveLocacao
	.def	RemoveLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	RemoveLocacao
RemoveLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	%r9, 40(%rbp)
.L496:
	leaq	.LC98(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	Int
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.L504
	movl	-20(%rbp), %eax
	cltq
	movq	24(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jnb	.L495
	leaq	.LC39(%rip), %rax
	movq	%rax, %rcx
	call	puts
.L495:
	movl	-20(%rbp), %eax
	cltq
	movq	24(%rbp), %rdx
	movq	8(%rdx), %rdx
	cmpq	%rax, %rdx
	jb	.L496
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	MapListaParaDicionario
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	movq	16(%rbp), %rdx
	movq	-32(%rbp), %rax
	movl	%ecx, %r8d
	movq	%rax, %rcx
	call	LocacaoPorIndice
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	40(%rbp), %rcx
	movq	32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	ValidaLocacao
	testl	%eax, %eax
	je	.L505
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeLocacao
	leaq	.LC40(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -44(%rbp)
	call	clearBuffer
	cmpl	$115, -44(%rbp)
	je	.L498
	cmpl	$83, -44(%rbp)
	jne	.L506
.L498:
	movq	$0, -8(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L499
.L501:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -16(%rbp)
.L499:
	cmpq	$0, -16(%rbp)
	je	.L500
	movq	-40(%rbp), %rax
	leaq	112(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$112, %rax
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L501
.L500:
	cmpq	$0, -8(%rbp)
	jne	.L502
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	216(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L503
.L502:
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L503:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 8(%rax)
	leaq	.LC41(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L492
.L504:
	nop
	jmp	.L492
.L505:
	nop
	jmp	.L492
.L506:
	nop
.L492:
	addq	$96, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC99:
	.ascii "\12ERRO: Cliente possui cadastro ativo no sistema!\0"
	.align 8
.LC100:
	.ascii "\12ERRO: Veiculo possui cadastro ativo no sistema!\0"
	.text
	.globl	ValidaLocacao
	.def	ValidaLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaLocacao
ValidaLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	ClientePorCPF
	testq	%rax, %rax
	je	.L508
	leaq	.LC99(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L509
.L508:
	movq	16(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	VeiculoPorPlaca
	testq	%rax, %rax
	je	.L510
	leaq	.LC100(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L509
.L510:
	movl	$1, %eax
.L509:
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC101:
	.ascii "\12http ERROR 202: Falha ao criar Data...\0"
	.align 8
.LC103:
	.ascii "\12A Data de Devolucao deve ser maior do que a Data de Locacao!!!\0"
	.text
	.globl	ValidaDataLocacao
	.def	ValidaDataLocacao;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaDataLocacao
ValidaDataLocacao:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	leaq	32(%rsp), %rbp
	.seh_setframe	%rbp, 32
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	cmpq	$0, 40(%rbp)
	je	.L512
	cmpq	$0, 32(%rbp)
	jne	.L513
.L512:
	leaq	.LC101(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L514
.L513:
	movq	40(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rax, %rbx
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	difftime
	pxor	%xmm1, %xmm1
	comisd	%xmm0, %xmm1
	jb	.L518
	leaq	.LC103(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$0, %eax
	jmp	.L514
.L518:
	movl	$1, %eax
.L514:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.globl	ValidaDataRange
	.def	ValidaDataRange;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidaDataRange
ValidaDataRange:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L520
.L530:
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L521
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ListaLocacaoPorCPF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L522
.L525:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-16(%rbp), %rax
	leaq	68(%rax), %rcx
	movq	24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	24(%rbp), %rax
	addq	$68, %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	DataRangeInRange
	cmpl	$-1, %eax
	je	.L523
	movl	$0, %eax
	jmp	.L524
.L523:
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -16(%rbp)
.L522:
	cmpq	$0, -16(%rbp)
	jne	.L525
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L521:
	movq	-8(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	24(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L526
	movq	24(%rbp), %rax
	leaq	20(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ListaLocacaoPorPlaca
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L527
.L529:
	movq	-16(%rbp), %rax
	leaq	32(%rax), %r8
	movq	-16(%rbp), %rax
	leaq	68(%rax), %rcx
	movq	24(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	24(%rbp), %rax
	addq	$68, %rax
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	DataRangeInRange
	cmpl	$-1, %eax
	je	.L528
	movl	$0, %eax
	jmp	.L524
.L528:
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -16(%rbp)
.L527:
	cmpq	$0, -16(%rbp)
	jne	.L529
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	free
.L526:
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
.L520:
	cmpq	$0, -8(%rbp)
	jne	.L530
	movl	$1, %eax
.L524:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC104:
	.ascii "LOCACOES\0"
	.text
	.globl	PersistenciaLocacoes
	.def	PersistenciaLocacoes;	.scl	2;	.type	32;	.endef
	.seh_proc	PersistenciaLocacoes
PersistenciaLocacoes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	cmpq	$0, 16(%rbp)
	je	.L537
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	.LC42(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC104(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L534
	leaq	.LC104(%rip), %rax
	movq	%rax, %rcx
	call	fprint_err
	jmp	.L531
.L534:
	movq	$0, -16(%rbp)
	jmp	.L535
.L536:
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$224, %edx
	movq	%rax, %rcx
	call	fwrite
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -8(%rbp)
	addq	$1, -16(%rbp)
.L535:
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L536
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	jmp	.L531
.L537:
	nop
.L531:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ReadLocacoes
	.def	ReadLocacoes;	.scl	2;	.type	32;	.endef
	.seh_proc	ReadLocacoes
ReadLocacoes:
	pushq	%rbp
	.seh_pushreg	%rbp
	subq	$272, %rsp
	.seh_stackalloc	272
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	CriaListaLocacoes
	movq	%rax, 136(%rbp)
	leaq	.LC44(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC104(%rip), %rax
	movq	%rax, %rcx
	call	fopen
	movq	%rax, 128(%rbp)
	cmpq	$0, 128(%rbp)
	jne	.L539
	leaq	.LC104(%rip), %rax
	movq	%rax, %rcx
	call	fprint_err
	movq	136(%rbp), %rax
	jmp	.L542
.L539:
	movq	128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$224, %edx
	movq	%rax, %rcx
	call	fread
.L541:
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	ClonaLocacao
	movq	%rax, %rdx
	movq	136(%rbp), %rax
	movq	%rax, %rcx
	call	InsereLocacaoNaLista
	movq	128(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r9
	movl	$1, %r8d
	movl	$224, %edx
	movq	%rax, %rcx
	call	fread
	movq	128(%rbp), %rax
	movq	%rax, %rcx
	call	feof
	testl	%eax, %eax
	je	.L541
	movq	128(%rbp), %rax
	movq	%rax, %rcx
	call	fclose
	movq	136(%rbp), %rax
.L542:
	addq	$272, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC105:
	.ascii "      LOCA\303\207\303\225ES\12\0"
.LC106:
	.ascii "  2 - Exibir por Indexador\0"
.LC107:
	.ascii "  3 - Exibir Todas\0"
	.text
	.globl	MenuLocacoes
	.def	MenuLocacoes;	.scl	2;	.type	32;	.endef
	.seh_proc	MenuLocacoes
MenuLocacoes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
.L553:
	call	cleanScreen
	leaq	.LC45(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC105(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC47(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC106(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC107(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC50(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC51(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -4(%rbp)
	call	clearBuffer
	movl	-4(%rbp), %eax
	subl	$48, %eax
	cmpl	$5, %eax
	ja	.L544
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L546(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L546(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L546:
	.long	.L554-.L546
	.long	.L550-.L546
	.long	.L549-.L546
	.long	.L548-.L546
	.long	.L547-.L546
	.long	.L545-.L546
	.text
.L550:
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	InsereLocacao
	call	pause
	jmp	.L552
.L549:
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$0, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	TelaLocacaoIndex
	jmp	.L552
.L548:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeListaLocacoes
	call	pause
	jmp	.L552
.L547:
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$1, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	TelaLocacaoIndex
	call	pause
	jmp	.L552
.L545:
	movq	24(%rbp), %rcx
	movq	16(%rbp), %rdx
	movq	32(%rbp), %rax
	movl	$2, %r9d
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	TelaLocacaoIndex
	call	pause
	jmp	.L552
.L544:
	leaq	.LC72(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	jmp	.L552
.L554:
	nop
.L552:
	cmpl	$48, -4(%rbp)
	jne	.L553
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ExibeLocacoesPorPlaca
	.def	ExibeLocacoesPorPlaca;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeLocacoesPorPlaca
ExibeLocacoesPorPlaca:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	-18(%rbp), %rax
	movq	%rax, %rcx
	call	PlacaInput
	testl	%eax, %eax
	jne	.L560
	leaq	-18(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ListaLocacaoPorPlaca
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L558
	leaq	.LC80(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L555
.L558:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeListaLocacoes
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	jmp	.L555
.L560:
	nop
.L555:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	ExibeLocacoesPorData
	.def	ExibeLocacoesPorData;	.scl	2;	.type	32;	.endef
	.seh_proc	ExibeLocacoesPorData
ExibeLocacoesPorData:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC81(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	CriaDataValida
	movq	%rax, -8(%rbp)
	leaq	.LC82(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	CriaDataValida
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	ListaLocacaoPorData
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L562
	leaq	.LC83(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L561
.L562:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeListaLocacoes
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	free
	nop
.L561:
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC108:
	.ascii "      RELAT\303\223RIOS\12\0"
.LC109:
	.ascii "  1 - Loca\303\247\303\265es por Placa\0"
.LC110:
	.ascii "  2 - Loca\303\247\303\265es por Data\0"
	.text
	.globl	MenuRelatorios
	.def	MenuRelatorios;	.scl	2;	.type	32;	.endef
	.seh_proc	MenuRelatorios
MenuRelatorios:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.L570:
	call	cleanScreen
	leaq	.LC45(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC108(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC109(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC110(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -4(%rbp)
	call	clearBuffer
	cmpl	$50, -4(%rbp)
	je	.L565
	cmpl	$50, -4(%rbp)
	jg	.L566
	cmpl	$48, -4(%rbp)
	je	.L571
	cmpl	$49, -4(%rbp)
	jne	.L566
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeLocacoesPorPlaca
	jmp	.L568
.L565:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	ExibeLocacoesPorData
	jmp	.L568
.L566:
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	call	puts
	nop
.L568:
	call	pause
	jmp	.L570
.L571:
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC111:
	.ascii "A B\0"
.LC112:
	.ascii "Rua Reykjavik Jokull, 93\0"
.LC113:
	.ascii "Stulla Sigurdasson\0"
.LC114:
	.ascii "45612378966\0"
.LC115:
	.ascii "A\0"
.LC116:
	.ascii "Rua Aegir Egmund, 64\0"
.LC117:
	.ascii "Frida Halfdasdottir\0"
.LC118:
	.ascii "12345678911\0"
.LC119:
	.ascii "A D\0"
.LC120:
	.ascii "Alameda Sogafjordur, 86\0"
.LC121:
	.ascii "Njall Gustavsson\0"
.LC122:
	.ascii "36925814722\0"
	.text
	.globl	PreencheClientes
	.def	PreencheClientes;	.scl	2;	.type	32;	.endef
	.seh_proc	PreencheClientes
PreencheClientes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC111(%rip), %r9
	leaq	.LC112(%rip), %r8
	leaq	.LC113(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC114(%rip), %rax
	movq	%rax, %rcx
	call	CriaClienteArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereClienteNaLista
	leaq	.LC115(%rip), %r9
	leaq	.LC116(%rip), %r8
	leaq	.LC117(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC118(%rip), %rax
	movq	%rax, %rcx
	call	CriaClienteArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereClienteNaLista
	leaq	.LC119(%rip), %r9
	leaq	.LC120(%rip), %r8
	leaq	.LC121(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC122(%rip), %rax
	movq	%rax, %rcx
	call	CriaClienteArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereClienteNaLista
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC123:
	.ascii "Prius\0"
.LC124:
	.ascii "Toyota\0"
.LC125:
	.ascii "ABC1234\0"
.LC127:
	.ascii "Civic\0"
.LC128:
	.ascii "Honda\0"
.LC129:
	.ascii "ABC9369\0"
.LC131:
	.ascii "Azera\0"
.LC132:
	.ascii "Hyundai\0"
.LC133:
	.ascii "CDF9369\0"
	.text
	.globl	PreencheVeiculos
	.def	PreencheVeiculos;	.scl	2;	.type	32;	.endef
	.seh_proc	PreencheVeiculos
PreencheVeiculos:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movsd	.LC126(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	movl	$2020, %r9d
	leaq	.LC123(%rip), %r8
	leaq	.LC124(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC125(%rip), %rax
	movq	%rax, %rcx
	call	CriaVeiculoArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereVeiculoNaLista
	movsd	.LC130(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	movl	$2016, %r9d
	leaq	.LC127(%rip), %r8
	leaq	.LC128(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC129(%rip), %rax
	movq	%rax, %rcx
	call	CriaVeiculoArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereVeiculoNaLista
	movsd	.LC134(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	movl	$2013, %r9d
	leaq	.LC131(%rip), %r8
	leaq	.LC132(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC133(%rip), %rax
	movq	%rax, %rcx
	call	CriaVeiculoArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereVeiculoNaLista
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC135:
	.ascii "2020\0"
.LC136:
	.ascii "09\0"
.LC137:
	.ascii "05\0"
.LC138:
	.ascii "10\0"
.LC139:
	.ascii "13\0"
.LC140:
	.ascii "2022\0"
.LC141:
	.ascii "23\0"
.LC142:
	.ascii "07\0"
.LC143:
	.ascii "14\0"
	.text
	.globl	PreencheLocacoes
	.def	PreencheLocacoes;	.scl	2;	.type	32;	.endef
	.seh_proc	PreencheLocacoes
PreencheLocacoes:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	leaq	.LC135(%rip), %r8
	leaq	.LC136(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC137(%rip), %rax
	movq	%rax, %rcx
	call	CriaDateTime
	movq	%rax, -8(%rbp)
	leaq	.LC135(%rip), %r8
	leaq	.LC138(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC139(%rip), %rax
	movq	%rax, %rcx
	call	CriaDateTime
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	DiferencaEmDias
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC130(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rsp)
	movq	%rdx, %r9
	movq	%rax, %r8
	leaq	.LC129(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC118(%rip), %rax
	movq	%rax, %rcx
	call	CriaLocacaoArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereLocacaoNaLista
	leaq	.LC140(%rip), %r8
	leaq	.LC137(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC141(%rip), %rax
	movq	%rax, %rcx
	call	CriaDateTime
	movq	%rax, -8(%rbp)
	leaq	.LC140(%rip), %r8
	leaq	.LC142(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC143(%rip), %rax
	movq	%rax, %rcx
	call	CriaDateTime
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	DiferencaEmDias
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LC126(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rsp)
	movq	%rdx, %r9
	movq	%rax, %r8
	leaq	.LC125(%rip), %rax
	movq	%rax, %rdx
	leaq	.LC118(%rip), %rax
	movq	%rax, %rcx
	call	CriaLocacaoArgs
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	InsereLocacaoNaLista
	nop
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC144:
	.ascii "\12Deseja salvar as altera\303\247\303\265es?\0"
	.align 8
.LC145:
	.ascii "\12Digite qualquer tecla para voltar\0"
.LC146:
	.ascii "\12   1 = SIM  ||  0 = NAO\0"
	.text
	.globl	LogOff
	.def	LogOff;	.scl	2;	.type	32;	.endef
	.seh_proc	LogOff
LogOff:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	leaq	.LC144(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC145(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC146(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC90(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -4(%rbp)
	call	clearBuffer
	cmpl	$49, -4(%rbp)
	jne	.L576
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	PersistenciaClientes
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	PersistenciaVeiculos
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	PersistenciaLocacoes
	movl	$48, %eax
	jmp	.L577
.L576:
	movl	-4(%rbp), %eax
.L577:
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC147:
	.ascii "================================\0"
	.align 8
.LC148:
	.ascii "      Loca\303\247\303\265es Louca-A\303\247\303\265es!\12\0"
.LC149:
	.ascii "  1 - Clientes\0"
.LC150:
	.ascii "  2 - Ve\303\255culos\0"
.LC151:
	.ascii "  3 - Loca\303\247\303\265es\0"
.LC152:
	.ascii "  4 - Relat\303\263rios\0"
	.text
	.globl	Menu
	.def	Menu;	.scl	2;	.type	32;	.endef
	.seh_proc	Menu
Menu:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
.L587:
	call	cleanScreen
	leaq	.LC147(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC148(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC149(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC150(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC151(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC152(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC52(%rip), %rax
	movq	%rax, %rcx
	call	puts
	leaq	.LC53(%rip), %rax
	movq	%rax, %rcx
	call	printf
	call	getchar
	movl	%eax, -4(%rbp)
	call	clearBuffer
	movl	-4(%rbp), %eax
	subl	$48, %eax
	cmpl	$4, %eax
	ja	.L579
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L581(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L581(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L581:
	.long	.L585-.L581
	.long	.L584-.L581
	.long	.L583-.L581
	.long	.L582-.L581
	.long	.L580-.L581
	.text
.L584:
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	MenuClientes
	jmp	.L586
.L583:
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	MenuVeiculos
	jmp	.L586
.L582:
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	MenuLocacoes
	jmp	.L586
.L580:
	movq	32(%rbp), %rax
	movq	%rax, %rcx
	call	MenuRelatorios
	jmp	.L586
.L585:
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	LogOff
	movl	%eax, -4(%rbp)
	call	pause
	jmp	.L586
.L579:
	leaq	.LC54(%rip), %rax
	movq	%rax, %rcx
	call	puts
	call	pause
	nop
.L586:
	cmpl	$48, -4(%rbp)
	jne	.L587
	nop
	nop
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC153:
	.ascii "\12listaLocacoes->locacao->Chave: %s\12\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	call	Locale
	call	ReadClientes
	movq	%rax, -8(%rbp)
	call	ReadVeiculos
	movq	%rax, -16(%rbp)
	call	ReadLocacoes
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L589
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	PreencheClientes
.L589:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L590
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	PreencheVeiculos
.L590:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L591
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	PreencheLocacoes
.L591:
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	Menu
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$112, %rax
	movq	%rax, %rdx
	leaq	.LC153(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC12:
	.long	0
	.long	1089804288
	.align 8
.LC126:
	.long	687194767
	.long	1079058268
	.align 8
.LC130:
	.long	-1202590843
	.long	1079141662
	.align 8
.LC134:
	.long	1030792151
	.long	1079404298
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 12.2.0"
	.def	setlocale;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	calloc;	.scl	2;	.type	32;	.endef
	.def	fgets;	.scl	2;	.type	32;	.endef
	.def	strtod;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strcat;	.scl	2;	.type	32;	.endef
	.def	perror;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	strtol;	.scl	2;	.type	32;	.endef
	.def	strftime;	.scl	2;	.type	32;	.endef
	.def	strcspn;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	feof;	.scl	2;	.type	32;	.endef
