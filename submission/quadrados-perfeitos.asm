@ /0000
	SC START
	HM /000

START	K /0000
LOOP1	LD N 		; iniciar loop - colocar N no acumulador
	SB SSC		; subtrair 65 do acumulador
	JZ END		; jump pra fora do loop if zero
	LD N
	MM n		
LOOP2	LD n		; iniciar mais um loop - colocar n no acumulador
	JZ END2
	SB UM		; subtrair 1 do acumulador
	MM n		; colocar o acumulador em n
	JZ END2		; jump pra fora do loop if zero
	ML DOIS		; multiplicar o acumulador por 2
	SB UM		; subtrair 1 do acumulador
	AD QP		; somar o acumulador com QP
	MM QP		; colocar o acumulador em QP
	JP LOOP2	; voltar pro inicio do loop
END2	LD QP
	MM M		; colocar QP no endereço M da memoria // aqui esta o erro
	LD M		; colocar M no acumulador
	AD OPCODE
	MM EXECMM
	LD QP
	EXECMM K /0000
	AD DOIS		; somar 2 no acumulador
	MM M		; colocar o acumulador no M
	LD N		
	AD UM
	MM N		; incrementar N
	JP LOOP1	; voltar pro start
END	RS START

@ /0200
M	K /0100 ; local da memoria
N	K /0000 ; em qual N estou
SSC	K /0041 ; 65
UM 	K /0001 ; 1
DOIS 	K /0002 ; 2
QP	K /0000 ; quadrado perfeito
n	K /0000 ; contador do loop
OPCODE 	K /8000
