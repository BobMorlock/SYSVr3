#	Copyright (c) 1984 AT&T
#	  All Rights Reserved

#	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T
#	The copyright notice above does not evidence any
#	actual or intended publication of such source code.

# C library -- chdir
.ident	"@(#)libc-m32:sys/chdir.s	1.3"

# error = chdir(string);

	.set	_chdir,12*8

	.globl	chdir
	.globl	_cerror

chdir:
	MCOUNT
	MOVW	&4,%r0
	MOVW	&_chdir,%r1
	GATE
	jgeu 	noerror
	JMP 	_cerror
noerror:
	CLRW	%r0
	RET
