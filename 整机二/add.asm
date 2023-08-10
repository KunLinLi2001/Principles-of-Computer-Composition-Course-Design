ORG 030
LDA 002    ;在002内存单元中存入第一个数的低八位
MOV R0,A
LDA 004    ;在004内存单元中存入第二个数的低八位
ADD A,R0   ;求和
STA 015    ;结果存入015单元
JC LOOP2     ;如果有进位的话就跳转

LDA 003    ;无进位的情况，取第一个数的高八位
MOV R0,A    
LDA 005    ;取第二个数的高八位
ADD A,R0    ;求和
JMP LOOP1     ;跳转至程序末尾

LOOP2:LDA 006    ;有进位的情况，006中存的是1，需要对高八位结果加1
MOV R1,A
LDA 003    ;取第一个数的高八位
MOV R0,A
LDA 005    ;取第二个数的高八位
ADD A,R0   ;求和
ADD A,R1    ;加1
JMP LOOP1    ;跳转至程序末尾

LOOP1:STA 016    ;将高八位结果存入016单元
END
