ORG 030
LDA 404     ;读询问口
JAO 030    
LDA 401    
STA 402    
LDA 404     ;读询问口
MOV A0,A   
ADD A,A0
JC 038
JMP 030
END
