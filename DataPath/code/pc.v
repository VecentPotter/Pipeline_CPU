module PC(NPC,PC,CLK,RST);
	input [31:2] NPC;                 //next PC
	input        CLK;                 //ʱ���ź�
	input        RST;                 //�����ź�
	output [31:2] PC;                 //new PC

	reg [31:2] PC;                   //now PC

	always @(posedge CLK or posedge RST)     //ʱ���ź������ػ������źŵ���ʱ����
	begin
		if(RST)                       //��������źŵ���
			PC <= 30'h0c00;           //PC����Ϊ0��30λ��ʮ�����ƣ�
		else
			PC <= NPC;                //PC�仯ΪNPC��������һ��
	end
endmodule

