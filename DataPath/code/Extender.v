module Extender(
    input [15:0]  shortNum,               //16λ����λ������
    input [1:0]   EXTOp,                  //������չ��ʽ��ѡ��
    output [31:0] result                  //�����չ���32λ
    );
    reg [31:0] result;
    
    always@(*)
        if(EXTOp == 2'b00)                  //�޷�����չ
            result = {16'b0 , shortNum};
        else if(EXTOp == 2'b10)             //�з�����չ
            result = {{16{shortNum[15]}},shortNum};
        else if(EXTOp == 2'b01)            //�߷���λ��չ
            result = {shortNum,16'b0};
endmodule
