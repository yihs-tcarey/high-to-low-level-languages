	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 13, 1
	.intel_syntax noprefix
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	eax, 54112
	call	____chkstk_darwin
	sub	rsp, rax
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 54068], 0
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	lea	rsi, [rbp - 64]
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_scanf
	lea	rdi, [rbp - 64]
	lea	rsi, [rip + L_.str.2]
	call	_fopen
	mov	qword ptr [rbp - 54080], rax
	cmp	qword ptr [rbp - 54080], 0
	jne	LBB0_2
## %bb.1:
	mov	rax, qword ptr [rip + ___stderrp@GOTPCREL]
	mov	rdi, qword ptr [rax]
	lea	rdx, [rbp - 64]
	lea	rsi, [rip + L_.str.3]
	mov	al, 0
	call	_fprintf
	mov	dword ptr [rbp - 54068], 1
	jmp	LBB0_20
LBB0_2:
	lea	rdi, [rbp - 54064]
	xor	esi, esi
	mov	edx, 4000
	call	_memset
	mov	dword ptr [rbp - 54084], 0
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	mov	rdi, qword ptr [rbp - 54080]
	movsxd	rax, dword ptr [rbp - 54084]
	lea	rdx, [rbp - 50064]
	imul	rax, rax, 50
	add	rdx, rax
	lea	rsi, [rip + L_.str.1]
	mov	al, 0
	call	_fscanf
	cmp	eax, 1
	jne	LBB0_13
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	mov	dword ptr [rbp - 54088], 0
LBB0_5:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [rbp - 54088]
	cmp	eax, dword ptr [rbp - 54084]
	jge	LBB0_10
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movsxd	rax, dword ptr [rbp - 54084]
	lea	rdi, [rbp - 50064]
	imul	rax, rax, 50
	add	rdi, rax
	movsxd	rax, dword ptr [rbp - 54088]
	lea	rsi, [rbp - 50064]
	imul	rax, rax, 50
	add	rsi, rax
	call	_strcmp
	cmp	eax, 0
	jne	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	movsxd	rax, dword ptr [rbp - 54088]
	mov	ecx, dword ptr [rbp + 4*rax - 54064]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 54064], ecx
	jmp	LBB0_10
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=2
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=2
	mov	eax, dword ptr [rbp - 54088]
	add	eax, 1
	mov	dword ptr [rbp - 54088], eax
	jmp	LBB0_5
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	mov	eax, dword ptr [rbp - 54088]
	cmp	eax, dword ptr [rbp - 54084]
	jne	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_3 Depth=1
	movsxd	rax, dword ptr [rbp - 54084]
	mov	ecx, dword ptr [rbp + 4*rax - 54064]
	add	ecx, 1
	mov	dword ptr [rbp + 4*rax - 54064], ecx
	mov	eax, dword ptr [rbp - 54084]
	add	eax, 1
	mov	dword ptr [rbp - 54084], eax
LBB0_12:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_3
LBB0_13:
	mov	rdi, qword ptr [rbp - 54080]
	call	_fclose
	mov	dword ptr [rbp - 54092], 0
	mov	dword ptr [rbp - 54096], 0
	mov	dword ptr [rbp - 54100], 0
LBB0_14:                                ## =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 54100]
	cmp	eax, dword ptr [rbp - 54084]
	jge	LBB0_19
## %bb.15:                              ##   in Loop: Header=BB0_14 Depth=1
	movsxd	rax, dword ptr [rbp - 54100]
	mov	eax, dword ptr [rbp + 4*rax - 54064]
	cmp	eax, dword ptr [rbp - 54092]
	jle	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_14 Depth=1
	movsxd	rax, dword ptr [rbp - 54100]
	mov	eax, dword ptr [rbp + 4*rax - 54064]
	mov	dword ptr [rbp - 54092], eax
	mov	eax, dword ptr [rbp - 54100]
	mov	dword ptr [rbp - 54096], eax
LBB0_17:                                ##   in Loop: Header=BB0_14 Depth=1
	jmp	LBB0_18
LBB0_18:                                ##   in Loop: Header=BB0_14 Depth=1
	mov	eax, dword ptr [rbp - 54100]
	add	eax, 1
	mov	dword ptr [rbp - 54100], eax
	jmp	LBB0_14
LBB0_19:
	movsxd	rax, dword ptr [rbp - 54096]
	lea	rsi, [rbp - 50064]
	imul	rax, rax, 50
	add	rsi, rax
	mov	edx, dword ptr [rbp - 54092]
	lea	rdi, [rip + L_.str.4]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 54068], 0
LBB0_20:
	mov	eax, dword ptr [rbp - 54068]
	mov	dword ptr [rbp - 54104], eax    ## 4-byte Spill
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_22
## %bb.21:
	mov	eax, dword ptr [rbp - 54104]    ## 4-byte Reload
	add	rsp, 54112
	pop	rbp
	ret
LBB0_22:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Enter file: "

L_.str.1:                               ## @.str.1
	.asciz	"%s"

L_.str.2:                               ## @.str.2
	.asciz	"r"

L_.str.3:                               ## @.str.3
	.asciz	"Error opening file %s\n"

L_.str.4:                               ## @.str.4
	.asciz	"%s %d\n"

.subsections_via_symbols
