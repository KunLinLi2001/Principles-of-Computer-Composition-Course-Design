ORG 016
LDA 002
MOV R0,A
LDA 003
SUB A,R0
RLC A
STA 020
HALT
END 
;功能：测试MOV、ADD、RRC指令
;结果应为（020）=A8  (002单元的内容测试前载入55H,003单元的内容测试前载入A9H)
