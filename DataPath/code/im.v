module IM(
    input [11:2] addr,          //PC����ָ���Ѱַ
    output [31:0] dout          //���������ַ�����ָ������ָ��
    );   
    reg [31:0] im[1023:0];      //1024��32λ��Intruction Memory
    wire [11:2] addr;           //
    initial
    begin
	    $readmemh("C:/Users/Hello Kiddy/Desktop/CPU/code/code.txt",im);//��16���Ƶ�ָ���ļ��浽Instruction Memory��
    end
    
    assign dout = im[addr];      //��������ĵ�ַ�ҵ���Ӧ��ָ������

endmodule
