ORG 00B
LDA 002
MOV R0,A
LDA 003
ADD A,R0
RRC A
STA 015
HALT
END
;功能：测试SUB、RLC指令
;结果应为（020）=A8  (002单元的内容测试前载入55H,003单元的内容测试前载入A9H)
