ORG 1000H
NUM1 DB 4
NUM2 DB 8

ORG 2000H
MOV CL, NUM1
MOV CH, NUM2
SUB CL, CH
SUB CL, 1
NOT CL
ADD CL, '0'
INT 0
END
