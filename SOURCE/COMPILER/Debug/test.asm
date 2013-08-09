
CODE 0	; 0
;program exit point
	halt 0

	proc	; dcmd_test
	; line 8
	;$lcl args 10
	;$lcl playerid c
	; line 9
	break	; c
	load.s.pri 10
	push.pri
	load.s.pri c
	pop.alt
	stor.i
	;$exp
	zero.pri
	retn

	proc	; main
	; line c
	; line d
	break	; 38
	;$lcl test fffffe00
	stack fffffe00
	zero.pri
	addr.alt fffffe00
	fill 200
	; line e
	break	; 58
	const.pri 4
	push.pri
	;$par
	const.pri 1
	push.pri
	;$par
	addr.pri fffffe00
	push.pri
	;$par
	addr.pri fffffe00
	push.pri
	;$par
	push.c 10
	sysreq.c 0	; strcmp
	stack 14
	not
	jzer 1
	addr.pri fffffe00
	const.alt 14
	add
	load.i
	zero.alt
	eq
	jzer 2
	zero.pri
	push.pri
	;$par
	push.pri
	;$par
	push.c 8
	call dcmd_test
	jzer 2
	const.pri 1
	jump 3
l.2
	zero.pri
l.3
	jnz 4
	addr.pri fffffe00
	const.alt 14
	add
	load.i
	const.alt 20
	eq
	jzer 5
	addr.pri fffffe00
	const.alt 18
	add
	push.pri
	;$par
	push.pri
	;$par
	push.c 8
	call dcmd_test
	jzer 5
	const.pri 1
	jump 6
l.5
	zero.pri
l.6
	jnz 4
	zero.pri
	jump 7
l.4
	const.pri 1
l.7
	jzer 1
	const.pri 1
	jump 8
l.1
	zero.pri
l.8
	jzer 0
	;$exp
	; line 14
	break	; 1cc
	const.pri 1
	stack 200
	retn
l.0		; 1e4
	stack 200
	zero.pri
	retn


DATA 0	; 0
dump 0 

STKSIZE 1000
