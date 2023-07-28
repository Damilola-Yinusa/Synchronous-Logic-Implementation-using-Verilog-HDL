module ALU (M1, M0, alu_opcode, F4, zero_flag);
  parameter size = 4;
  input [size-1:0] M0, M1;
  input [size-2:0] alu_opcode;
  output reg [size-1:0] F4;
  output reg zero_flag;
  
  always @(M0 or M1 or alu_opcode)
    begin
      case(alu_opcode)
        001: F4 <= 1;   //set
        010: F4 <= M1 + 1;    //increment
        011: F4 <= M1 - 1 ;    //decrement
        101: F4 <= M1;    //store -> R[xx] to data_out
        110: F4 <= M1 + M0;   //add
        111: F4 <= M0;   //copy -> R[yy] to R[xx]
        default: F4 <= 0;
      endcase
    end
    
  always @(F4) 
    begin
      if (!F4)
        zero_flag = 1;
      else
        zero_flag = 0;
    end
	 
endmodule