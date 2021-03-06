`include "instruction.v"
module Control_mem(
    input [31:26] Instruction,
    input [2:0] M;
);
    reg Branch;
    reg MemRead;
    reg MemWrite;
    Branch = M[0];
    MemRead = M[1];
    MemWrite = M[2];

    always @(*)
        begin
            case (Instruction)
                Lw_:  //LW Instructions
                begin
                    MemRead = 1'b1;            
                end
                Sw_:   //SW Instructions
                begin
                    MemWrite = 1'b1;             
                end
                Branch_:   // Branch Instructions
                begin
                    ALUOp = 2'b01;
                end
                default: 
            endcase
        end
endmodule