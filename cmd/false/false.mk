#	Copyright (c) 1984 AT&T
#	  All Rights Reserved

#	THIS IS UNPUBLISHED PROPRIETARY SOURCE CODE OF AT&T
#	The copyright notice above does not evidence any
#	actual or intended publication of such source code.

#ident	"@(#)false:false.mk	1.1"

ROOT =
INS = install

all:	install

install:
	cp false.sh  false
	$(INS) -f $(ROOT)/bin false

clean:

clobber:	clean
