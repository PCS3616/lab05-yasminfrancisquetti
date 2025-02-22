@ /0000
	SC START
	HM /000

START	K /0000
LOOP1	LD N 		; iniciar loop - colocar N no acumulador
	SB SC		; subtrair 65 do acumulador
	JZ END1		; jump pra fora do loop if zero
LOOP2	LD n		; iniciar mais um loop - colocar n no acumulador
	SB UM		; subtrair 1 do acumulador
	JZ END2		; jump pra fora do loop if zero
	ML DOIS		; multiplicar o acumulador por 2
	SB UM		; subtrair 1 do acumulador
	AD QP		; somar o acumulador com QP
	MM QP		; colocar o acumulador em QP
END2	JP LOOP2	; voltar pro inicio do loop
	LD QP
	MM M		; colocar QP no endereço M da memoria
	LD M		; colocar M no acumulador
	AD DOIS		; somar 2 no acumulador
	MM M		; colocar o acumulador no M
	LD N		
	AD UM
	MM N		; incrementar N
END1	JP LOOP1	; voltar pro start

@ /0200
M	K /0100 ; local da memoria
N	K /0000 ; em qual N estou
SC	K /0041 ; 65
UM 	K /0001 ; 1
DOIS 	K /0002 ; 2
QP	K /0000 ; quadrado perfeito
n	K /0000 ; contador do loop
