ORG 030
LDA 404     ;读询问口
JAO 030     ;判断KB是否等于0
LDA 401     ;KB=0，读取该键值
STA 402     ;打印该字符
LDA 404     ;读询问口
MOV A0,A    ;判断PB是否等于0
ADD A,A0
JC 038
JMP 030
END
