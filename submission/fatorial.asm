@ /000
	SC START
	HM /000
START	K /0000
	LD N
	JZ END
LOOP	LD RF
	ML N
	MM RF
	LD N
	SB UM
	JZ END
	MM N
	JP LOOP
END	RS START

@ /100
N	K /0001
RF	K /0001
UM	K /0001

