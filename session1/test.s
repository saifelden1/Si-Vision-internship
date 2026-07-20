	.file	"test.cpp"
	.text
	.p2align 4
	.globl	_Z14UnusedFunctionv
	.def	_Z14UnusedFunctionv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14UnusedFunctionv
_Z14UnusedFunctionv:
.LFB136:
	.seh_endprologue
	movl	$5, %eax
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Hello, World!\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB137:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	puts
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-mcf-seh, built by Brecht Sanders) 13.2.0"
	.def	puts;	.scl	2;	.type	32;	.endef
