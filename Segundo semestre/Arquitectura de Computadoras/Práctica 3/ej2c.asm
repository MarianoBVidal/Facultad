;Constantes
PIO EQU 30H

ORG 1000H
CADENA DB ?

ORG 3000H
CONF_PIO: MOV AL, 01H
OUT PIO+2, AL
MOV AL, 00H
OUT PIO+3, AL
RET

ORG 3100H
CONSULTA: IN AL, PIO
AND AL, 01H
JNZ CONSULTA
RET

ORG 3200H
STROBE: IN AL, PIO
AND AL, 0FDH
OUT PIO, AL
IN AL, PIO
OR AL, 02H
OUT PIO, AL
RET

ORG 2000H
CALL CONF_PIO
MOV CL, 5; Contador para las letras
MOV BX, OFFSET CADENA; Dirección para recibir letra
LAZO: INT 6; Ingresar letra del teclado
CALL CONSULTA
MOV AL, [BX]
OUT PIO+1, AL
CALL STROBE; Imprimirla
INC BX; Pasar a la siguiente dirección de la cadena
DEC CL; Decrementar contador
CMP CL, 0; Comparar CL con 5
JNZ LAZO; Repetir el lazo
INT 0
END
