	.file	"main.c"
 # GNU C17 (x86_64-posix-seh-rev0, Built by MinGW-W64 project) version 8.1.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 8.1.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.18-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: 
 # -iprefix C:/Program Files/LLVM/bin/../lib/gcc/x86_64-w64-mingw32/8.1.0/
 # -D_REENTRANT .\main.c -mtune=core2 -march=nocona -fverbose-asm
 # options enabled:  -faggressive-loop-optimizations
 # -fasynchronous-unwind-tables -fauto-inc-dec -fchkp-check-incomplete-type
 # -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
 # -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
 # -fchkp-use-static-bounds -fchkp-use-static-const-bounds
 # -fchkp-use-wrappers -fcommon -fdelete-null-pointer-checks
 # -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
 # -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
 # -fgnu-unique -fident -finline-atomics -fira-hoist-pressure
 # -fira-share-save-slots -fira-share-spill-slots -fivopts
 # -fkeep-inline-dllexport -fkeep-static-consts -fleading-underscore
 # -flifetime-dse -flto-odr-type-merging -fmath-errno -fmerge-debug-strings
 # -fpeephole -fpic -fplt -fprefetch-loop-arrays -freg-struct-return
 # -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 # -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 # -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 # -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
 # -fset-stack-executable -fshow-column -fshrink-wrap-separate
 # -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
 # -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
 # -ftree-cselim -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im
 # -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 # -ftree-phiprop -ftree-reassoc -ftree-scev-cprop -funit-at-a-time
 # -funwind-tables -fverbose-asm -fzero-initialized-in-bss
 # -m128bit-long-double -m64 -m80387 -maccumulate-outgoing-args
 # -malign-double -malign-stringops -mcx16 -mfancy-math-387 -mfentry
 # -mfp-ret-in-387 -mfxsr -mieee-fp -mlong-double-80 -mmmx -mms-bitfields
 # -mno-sse4 -mpush-args -mred-zone -msse -msse2 -msse3 -mstack-arg-probe
 # -mstackrealign -mvzeroupper

	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Created DLL is: \0"
.LC1:
	.ascii "\12Created DLL is: \0"
.LC2:
	.ascii "\12\12delete=>\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
 # .\main.c:7: {
	call	__main	 #
 # .\main.c:9:     struct Node *head = NULL;
	movq	$0, -8(%rbp)	 #, head
 # .\main.c:12:     append(&head, 6);
	leaq	-8(%rbp), %rax	 #, tmp102
	movl	$6, %edx	 #,
	movq	%rax, %rcx	 # tmp102,
	call	append	 #
 # .\main.c:14:     printf("Created DLL is: ");
	leaq	.LC0(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:15:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.0_1
	movq	%rax, %rcx	 # head.0_1,
	call	printList	 #
 # .\main.c:18:     push(&head, 7);
	leaq	-8(%rbp), %rax	 #, tmp103
	movl	$7, %edx	 #,
	movq	%rax, %rcx	 # tmp103,
	call	push	 #
 # .\main.c:20:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:21:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.1_2
	movq	%rax, %rcx	 # head.1_2,
	call	printList	 #
 # .\main.c:24:     push(&head, 1);
	leaq	-8(%rbp), %rax	 #, tmp104
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp104,
	call	push	 #
 # .\main.c:26:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:27:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.2_3
	movq	%rax, %rcx	 # head.2_3,
	call	printList	 #
 # .\main.c:30:     append(&head, 4);
	leaq	-8(%rbp), %rax	 #, tmp105
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp105,
	call	append	 #
 # .\main.c:32:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:33:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.3_4
	movq	%rax, %rcx	 # head.3_4,
	call	printList	 #
 # .\main.c:36:     insertAfter(head->next, 8);
	movq	-8(%rbp), %rax	 # head, head.4_5
 # .\main.c:36:     insertAfter(head->next, 8);
	movq	8(%rax), %rax	 # head.4_5->next, _6
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # _6,
	call	insertAfter	 #
 # .\main.c:38:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:39:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.5_7
	movq	%rax, %rcx	 # head.5_7,
	call	printList	 #
 # .\main.c:41:     printf("\n\ndelete=>\n\n");
	leaq	.LC2(%rip), %rcx	 #,
	call	puts	 #
 # .\main.c:43:     deleteNode(&head, 8);
	leaq	-8(%rbp), %rax	 #, tmp106
	movl	$8, %edx	 #,
	movq	%rax, %rcx	 # tmp106,
	call	deleteNode	 #
 # .\main.c:45:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:46:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.6_8
	movq	%rax, %rcx	 # head.6_8,
	call	printList	 #
 # .\main.c:48:     deleteNode(&head, 1);
	leaq	-8(%rbp), %rax	 #, tmp107
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp107,
	call	deleteNode	 #
 # .\main.c:50:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:51:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.7_9
	movq	%rax, %rcx	 # head.7_9,
	call	printList	 #
 # .\main.c:53:     deleteNode(&head, 7);
	leaq	-8(%rbp), %rax	 #, tmp108
	movl	$7, %edx	 #,
	movq	%rax, %rcx	 # tmp108,
	call	deleteNode	 #
 # .\main.c:55:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:56:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.8_10
	movq	%rax, %rcx	 # head.8_10,
	call	printList	 #
 # .\main.c:58:     deleteNode(&head, 4);
	leaq	-8(%rbp), %rax	 #, tmp109
	movl	$4, %edx	 #,
	movq	%rax, %rcx	 # tmp109,
	call	deleteNode	 #
 # .\main.c:59:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:60:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.9_11
	movq	%rax, %rcx	 # head.9_11,
	call	printList	 #
 # .\main.c:62:     deleteNode(&head, 6);
	leaq	-8(%rbp), %rax	 #, tmp110
	movl	$6, %edx	 #,
	movq	%rax, %rcx	 # tmp110,
	call	deleteNode	 #
 # .\main.c:63:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:64:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.10_12
	movq	%rax, %rcx	 # head.10_12,
	call	printList	 #
 # .\main.c:66:     append(&head, 1);
	leaq	-8(%rbp), %rax	 #, tmp111
	movl	$1, %edx	 #,
	movq	%rax, %rcx	 # tmp111,
	call	append	 #
 # .\main.c:67:     printf("\nCreated DLL is: ");
	leaq	.LC1(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:68:     printList(head);
	movq	-8(%rbp), %rax	 # head, head.11_13
	movq	%rax, %rcx	 # head.11_13,
	call	printList	 #
 # .\main.c:70:     return 0;
	movl	$0, %eax	 #, _50
 # .\main.c:71: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "\12Traversal in forward direction \0"
.LC4:
	.ascii " %d \0"
	.align 8
.LC5:
	.ascii "\12Traversal in reverse direction \0"
	.text
	.globl	printList
	.def	printList;	.scl	2;	.type	32;	.endef
	.seh_proc	printList
printList:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # node, node
 # .\main.c:75:     struct Node *last = NULL;
	movq	$0, -8(%rbp)	 #, last
 # .\main.c:76:     printf("\nTraversal in forward direction \n");
	leaq	.LC3(%rip), %rcx	 #,
	call	puts	 #
 # .\main.c:77:     while (node != NULL)
	jmp	.L4	 #
.L5:
 # .\main.c:79:         printf(" %d ", node->data);
	movq	16(%rbp), %rax	 # node, tmp89
	movl	(%rax), %eax	 # node_3->data, _1
	movl	%eax, %edx	 # _1,
	leaq	.LC4(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:80:         last = node;
	movq	16(%rbp), %rax	 # node, tmp90
	movq	%rax, -8(%rbp)	 # tmp90, last
 # .\main.c:81:         node = node->next;
	movq	16(%rbp), %rax	 # node, tmp91
	movq	8(%rax), %rax	 # node_3->next, tmp92
	movq	%rax, 16(%rbp)	 # tmp92, node
.L4:
 # .\main.c:77:     while (node != NULL)
	cmpq	$0, 16(%rbp)	 #, node
	jne	.L5	 #,
 # .\main.c:84:     printf("\nTraversal in reverse direction \n");
	leaq	.LC5(%rip), %rcx	 #,
	call	puts	 #
 # .\main.c:85:     while (last != NULL)
	jmp	.L6	 #
.L7:
 # .\main.c:87:         printf(" %d ", last->data);
	movq	-8(%rbp), %rax	 # last, tmp93
	movl	(%rax), %eax	 # last_5->data, _2
	movl	%eax, %edx	 # _2,
	leaq	.LC4(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:88:         last = last->prev;
	movq	-8(%rbp), %rax	 # last, tmp94
	movq	16(%rax), %rax	 # last_5->prev, tmp95
	movq	%rax, -8(%rbp)	 # tmp95, last
.L6:
 # .\main.c:85:     while (last != NULL)
	cmpq	$0, -8(%rbp)	 #, last
	jne	.L7	 #,
 # .\main.c:90: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	push
	.def	push;	.scl	2;	.type	32;	.endef
	.seh_proc	push
push:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # head_ref, head_ref
	movl	%edx, 24(%rbp)	 # new_data, new_data
 # .\main.c:95:     struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));
	movl	$24, %ecx	 #,
	call	malloc	 #
	movq	%rax, -8(%rbp)	 # tmp90, new_node
 # .\main.c:98:     new_node->data = new_data;
	movq	-8(%rbp), %rax	 # new_node, tmp91
	movl	24(%rbp), %edx	 # new_data, tmp92
	movl	%edx, (%rax)	 # tmp92, new_node_7->data
 # .\main.c:101:     new_node->next = *head_ref;
	movq	16(%rbp), %rax	 # head_ref, tmp93
	movq	(%rax), %rdx	 # *head_ref_10(D), _1
 # .\main.c:101:     new_node->next = *head_ref;
	movq	-8(%rbp), %rax	 # new_node, tmp94
	movq	%rdx, 8(%rax)	 # _1, new_node_7->next
 # .\main.c:102:     new_node->prev = NULL;
	movq	-8(%rbp), %rax	 # new_node, tmp95
	movq	$0, 16(%rax)	 #, new_node_7->prev
 # .\main.c:105:     if ((*head_ref) != NULL)
	movq	16(%rbp), %rax	 # head_ref, tmp96
	movq	(%rax), %rax	 # *head_ref_10(D), _2
 # .\main.c:105:     if ((*head_ref) != NULL)
	testq	%rax, %rax	 # _2
	je	.L9	 #,
 # .\main.c:107:         (*head_ref)->prev = new_node;
	movq	16(%rbp), %rax	 # head_ref, tmp97
	movq	(%rax), %rax	 # *head_ref_10(D), _3
 # .\main.c:107:         (*head_ref)->prev = new_node;
	movq	-8(%rbp), %rdx	 # new_node, tmp98
	movq	%rdx, 16(%rax)	 # tmp98, _3->prev
.L9:
 # .\main.c:111:     *head_ref = new_node;
	movq	16(%rbp), %rax	 # head_ref, tmp99
	movq	-8(%rbp), %rdx	 # new_node, tmp100
	movq	%rdx, (%rax)	 # tmp100, *head_ref_10(D)
 # .\main.c:112: }
	nop	
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC6:
	.ascii "the given previous node cannot be NULL\0"
	.text
	.globl	insertAfter
	.def	insertAfter;	.scl	2;	.type	32;	.endef
	.seh_proc	insertAfter
insertAfter:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # target_node, target_node
	movl	%edx, 24(%rbp)	 # new_data, new_data
 # .\main.c:117:     if (target_node == NULL)
	cmpq	$0, 16(%rbp)	 #, target_node
	jne	.L11	 #,
 # .\main.c:119:         printf("the given previous node cannot be NULL");
	leaq	.LC6(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:120:         return;
	jmp	.L10	 #
.L11:
 # .\main.c:123:     struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));
	movl	$24, %ecx	 #,
	call	malloc	 #
	movq	%rax, -8(%rbp)	 # tmp90, new_node
 # .\main.c:126:     new_node->data = new_data;
	movq	-8(%rbp), %rax	 # new_node, tmp91
	movl	24(%rbp), %edx	 # new_data, tmp92
	movl	%edx, (%rax)	 # tmp92, new_node_9->data
 # .\main.c:129:     new_node->next = target_node->next;
	movq	16(%rbp), %rax	 # target_node, tmp93
	movq	8(%rax), %rdx	 # target_node_5(D)->next, _1
 # .\main.c:129:     new_node->next = target_node->next;
	movq	-8(%rbp), %rax	 # new_node, tmp94
	movq	%rdx, 8(%rax)	 # _1, new_node_9->next
 # .\main.c:132:     target_node->next = new_node;
	movq	16(%rbp), %rax	 # target_node, tmp95
	movq	-8(%rbp), %rdx	 # new_node, tmp96
	movq	%rdx, 8(%rax)	 # tmp96, target_node_5(D)->next
 # .\main.c:135:     new_node->prev = target_node;
	movq	-8(%rbp), %rax	 # new_node, tmp97
	movq	16(%rbp), %rdx	 # target_node, tmp98
	movq	%rdx, 16(%rax)	 # tmp98, new_node_9->prev
 # .\main.c:138:     if (new_node->next != NULL)
	movq	-8(%rbp), %rax	 # new_node, tmp99
	movq	8(%rax), %rax	 # new_node_9->next, _2
 # .\main.c:138:     if (new_node->next != NULL)
	testq	%rax, %rax	 # _2
	je	.L10	 #,
 # .\main.c:140:         new_node->next->prev = new_node;
	movq	-8(%rbp), %rax	 # new_node, tmp100
	movq	8(%rax), %rax	 # new_node_9->next, _3
 # .\main.c:140:         new_node->next->prev = new_node;
	movq	-8(%rbp), %rdx	 # new_node, tmp101
	movq	%rdx, 16(%rax)	 # tmp101, _3->prev
.L10:
 # .\main.c:142: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	append
	.def	append;	.scl	2;	.type	32;	.endef
	.seh_proc	append
append:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # head_ref, head_ref
	movl	%edx, 24(%rbp)	 # new_data, new_data
 # .\main.c:146:     struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));
	movl	$24, %ecx	 #,
	call	malloc	 #
	movq	%rax, -16(%rbp)	 # tmp89, new_node
 # .\main.c:148:     struct Node *last = *head_ref;
	movq	16(%rbp), %rax	 # head_ref, tmp90
	movq	(%rax), %rax	 # *head_ref_8(D), tmp91
	movq	%rax, -8(%rbp)	 # tmp91, last
 # .\main.c:150:     new_node->data = new_data;
	movq	-16(%rbp), %rax	 # new_node, tmp92
	movl	24(%rbp), %edx	 # new_data, tmp93
	movl	%edx, (%rax)	 # tmp93, new_node_7->data
 # .\main.c:152:     new_node->next = NULL;
	movq	-16(%rbp), %rax	 # new_node, tmp94
	movq	$0, 8(%rax)	 #, new_node_7->next
 # .\main.c:156:     if (*head_ref == NULL)
	movq	16(%rbp), %rax	 # head_ref, tmp95
	movq	(%rax), %rax	 # *head_ref_8(D), _1
 # .\main.c:156:     if (*head_ref == NULL)
	testq	%rax, %rax	 # _1
	jne	.L16	 #,
 # .\main.c:158:         new_node->prev = NULL;
	movq	-16(%rbp), %rax	 # new_node, tmp96
	movq	$0, 16(%rax)	 #, new_node_7->prev
 # .\main.c:159:         *head_ref = new_node;
	movq	16(%rbp), %rax	 # head_ref, tmp97
	movq	-16(%rbp), %rdx	 # new_node, tmp98
	movq	%rdx, (%rax)	 # tmp98, *head_ref_8(D)
 # .\main.c:160:         return;
	jmp	.L13	 #
.L17:
 # .\main.c:166:         last = last->next;
	movq	-8(%rbp), %rax	 # last, tmp99
	movq	8(%rax), %rax	 # last_3->next, tmp100
	movq	%rax, -8(%rbp)	 # tmp100, last
.L16:
 # .\main.c:164:     while (last->next != NULL)
	movq	-8(%rbp), %rax	 # last, tmp101
	movq	8(%rax), %rax	 # last_3->next, _2
 # .\main.c:164:     while (last->next != NULL)
	testq	%rax, %rax	 # _2
	jne	.L17	 #,
 # .\main.c:170:     last->next = new_node;
	movq	-8(%rbp), %rax	 # last, tmp102
	movq	-16(%rbp), %rdx	 # new_node, tmp103
	movq	%rdx, 8(%rax)	 # tmp103, last_3->next
 # .\main.c:173:     new_node->prev = last;
	movq	-16(%rbp), %rax	 # new_node, tmp104
	movq	-8(%rbp), %rdx	 # last, tmp105
	movq	%rdx, 16(%rax)	 # tmp105, new_node_7->prev
 # .\main.c:175:     return;
	nop	
.L13:
 # .\main.c:176: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC7:
	.ascii "the given next node cannot be NULL\0"
	.text
	.globl	insertBefore
	.def	insertBefore;	.scl	2;	.type	32;	.endef
	.seh_proc	insertBefore
insertBefore:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # head_ref, head_ref
	movq	%rdx, 24(%rbp)	 # next_node, next_node
	movl	%r8d, 32(%rbp)	 # new_data, new_data
 # .\main.c:180:     if (next_node == NULL)
	cmpq	$0, 24(%rbp)	 #, next_node
	jne	.L19	 #,
 # .\main.c:182:         printf("the given next node cannot be NULL");
	leaq	.LC7(%rip), %rcx	 #,
	call	printf	 #
 # .\main.c:183:         return;
	jmp	.L18	 #
.L19:
 # .\main.c:186:     struct Node *new_node = (struct Node *)malloc(sizeof(*new_node));
	movl	$24, %ecx	 #,
	call	malloc	 #
	movq	%rax, -8(%rbp)	 # tmp90, new_node
 # .\main.c:188:     new_node->data = new_data;
	movq	-8(%rbp), %rax	 # new_node, tmp91
	movl	32(%rbp), %edx	 # new_data, tmp92
	movl	%edx, (%rax)	 # tmp92, new_node_9->data
 # .\main.c:191:     new_node->prev = next_node->prev;
	movq	24(%rbp), %rax	 # next_node, tmp93
	movq	16(%rax), %rdx	 # next_node_5(D)->prev, _1
 # .\main.c:191:     new_node->prev = next_node->prev;
	movq	-8(%rbp), %rax	 # new_node, tmp94
	movq	%rdx, 16(%rax)	 # _1, new_node_9->prev
 # .\main.c:194:     next_node->prev = new_node;
	movq	24(%rbp), %rax	 # next_node, tmp95
	movq	-8(%rbp), %rdx	 # new_node, tmp96
	movq	%rdx, 16(%rax)	 # tmp96, next_node_5(D)->prev
 # .\main.c:197:     new_node->next = next_node;
	movq	-8(%rbp), %rax	 # new_node, tmp97
	movq	24(%rbp), %rdx	 # next_node, tmp98
	movq	%rdx, 8(%rax)	 # tmp98, new_node_9->next
 # .\main.c:200:     if (new_node->prev != NULL)
	movq	-8(%rbp), %rax	 # new_node, tmp99
	movq	16(%rax), %rax	 # new_node_9->prev, _2
 # .\main.c:200:     if (new_node->prev != NULL)
	testq	%rax, %rax	 # _2
	je	.L21	 #,
 # .\main.c:201:         new_node->prev->next = new_node;
	movq	-8(%rbp), %rax	 # new_node, tmp100
	movq	16(%rax), %rax	 # new_node_9->prev, _3
 # .\main.c:201:         new_node->prev->next = new_node;
	movq	-8(%rbp), %rdx	 # new_node, tmp101
	movq	%rdx, 8(%rax)	 # tmp101, _3->next
	jmp	.L18	 #
.L21:
 # .\main.c:204:         (*head_ref) = new_node;
	movq	16(%rbp), %rax	 # head_ref, tmp102
	movq	-8(%rbp), %rdx	 # new_node, tmp103
	movq	%rdx, (%rax)	 # tmp103, *head_ref_16(D)
.L18:
 # .\main.c:205: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.globl	deleteNode
	.def	deleteNode;	.scl	2;	.type	32;	.endef
	.seh_proc	deleteNode
deleteNode:
	pushq	%rbp	 #
	.seh_pushreg	%rbp
	movq	%rsp, %rbp	 #,
	.seh_setframe	%rbp, 0
	subq	$48, %rsp	 #,
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)	 # head_ref, head_ref
	movl	%edx, 24(%rbp)	 # key, key
 # .\main.c:209:     struct Node *target_node = *head_ref;
	movq	16(%rbp), %rax	 # head_ref, tmp98
	movq	(%rax), %rax	 # *head_ref_16(D), tmp99
	movq	%rax, -8(%rbp)	 # tmp99, target_node
 # .\main.c:211:     if (target_node != NULL && target_node->data == key)
	cmpq	$0, -8(%rbp)	 #, target_node
	je	.L27	 #,
 # .\main.c:211:     if (target_node != NULL && target_node->data == key)
	movq	-8(%rbp), %rax	 # target_node, tmp100
	movl	(%rax), %eax	 # target_node_17->data, _1
 # .\main.c:211:     if (target_node != NULL && target_node->data == key)
	cmpl	%eax, 24(%rbp)	 # _1, key
	jne	.L27	 #,
 # .\main.c:213:         if (target_node->next != NULL)
	movq	-8(%rbp), %rax	 # target_node, tmp101
	movq	8(%rax), %rax	 # target_node_17->next, _2
 # .\main.c:213:         if (target_node->next != NULL)
	testq	%rax, %rax	 # _2
	je	.L24	 #,
 # .\main.c:215:             *head_ref = target_node->next;
	movq	-8(%rbp), %rax	 # target_node, tmp102
	movq	8(%rax), %rdx	 # target_node_17->next, _3
 # .\main.c:215:             *head_ref = target_node->next;
	movq	16(%rbp), %rax	 # head_ref, tmp103
	movq	%rdx, (%rax)	 # _3, *head_ref_16(D)
 # .\main.c:216:             target_node->next->prev = NULL;
	movq	-8(%rbp), %rax	 # target_node, tmp104
	movq	8(%rax), %rax	 # target_node_17->next, _4
 # .\main.c:216:             target_node->next->prev = NULL;
	movq	$0, 16(%rax)	 #, _4->prev
 # .\main.c:217:             free(target_node);
	movq	-8(%rbp), %rax	 # target_node, tmp105
	movq	%rax, %rcx	 # tmp105,
	call	free	 #
 # .\main.c:223:         return;
	jmp	.L22	 #
.L24:
 # .\main.c:221:             *head_ref = NULL;
	movq	16(%rbp), %rax	 # head_ref, tmp106
	movq	$0, (%rax)	 #, *head_ref_16(D)
 # .\main.c:223:         return;
	jmp	.L22	 #
.L29:
 # .\main.c:228:         target_node = target_node->next;
	movq	-8(%rbp), %rax	 # target_node, tmp107
	movq	8(%rax), %rax	 # target_node_12->next, tmp108
	movq	%rax, -8(%rbp)	 # tmp108, target_node
.L27:
 # .\main.c:226:     while (target_node != NULL && target_node->data != key)
	cmpq	$0, -8(%rbp)	 #, target_node
	je	.L28	 #,
 # .\main.c:226:     while (target_node != NULL && target_node->data != key)
	movq	-8(%rbp), %rax	 # target_node, tmp109
	movl	(%rax), %eax	 # target_node_12->data, _5
 # .\main.c:226:     while (target_node != NULL && target_node->data != key)
	cmpl	%eax, 24(%rbp)	 # _5, key
	jne	.L29	 #,
.L28:
 # .\main.c:231:     if (target_node == NULL)
	cmpq	$0, -8(%rbp)	 #, target_node
	je	.L32	 #,
 # .\main.c:236:     if (target_node->next == NULL)
	movq	-8(%rbp), %rax	 # target_node, tmp110
	movq	8(%rax), %rax	 # target_node_12->next, _6
 # .\main.c:236:     if (target_node->next == NULL)
	testq	%rax, %rax	 # _6
	jne	.L31	 #,
 # .\main.c:238:         target_node->prev->next = NULL;
	movq	-8(%rbp), %rax	 # target_node, tmp111
	movq	16(%rax), %rax	 # target_node_12->prev, _7
 # .\main.c:238:         target_node->prev->next = NULL;
	movq	$0, 8(%rax)	 #, _7->next
 # .\main.c:239:         free(target_node);
	movq	-8(%rbp), %rax	 # target_node, tmp112
	movq	%rax, %rcx	 # tmp112,
	call	free	 #
 # .\main.c:240:         return;
	jmp	.L22	 #
.L31:
 # .\main.c:243:     target_node->prev->next = target_node->next;
	movq	-8(%rbp), %rax	 # target_node, tmp113
	movq	16(%rax), %rax	 # target_node_12->prev, _8
 # .\main.c:243:     target_node->prev->next = target_node->next;
	movq	-8(%rbp), %rdx	 # target_node, tmp114
	movq	8(%rdx), %rdx	 # target_node_12->next, _9
 # .\main.c:243:     target_node->prev->next = target_node->next;
	movq	%rdx, 8(%rax)	 # _9, _8->next
 # .\main.c:244:     target_node->next->prev = target_node->prev;
	movq	-8(%rbp), %rax	 # target_node, tmp115
	movq	8(%rax), %rax	 # target_node_12->next, _10
 # .\main.c:244:     target_node->next->prev = target_node->prev;
	movq	-8(%rbp), %rdx	 # target_node, tmp116
	movq	16(%rdx), %rdx	 # target_node_12->prev, _11
 # .\main.c:244:     target_node->next->prev = target_node->prev;
	movq	%rdx, 16(%rax)	 # _11, _10->prev
 # .\main.c:246:     free(target_node);
	movq	-8(%rbp), %rax	 # target_node, tmp117
	movq	%rax, %rcx	 # tmp117,
	call	free	 #
	jmp	.L22	 #
.L32:
 # .\main.c:233:         return;
	nop	
.L22:
 # .\main.c:247: }
	addq	$48, %rsp	 #,
	popq	%rbp	 #
	ret	
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
