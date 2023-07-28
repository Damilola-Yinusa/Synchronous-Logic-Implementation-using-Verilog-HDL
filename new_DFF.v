module new_DFF (Clk, F, out);
parameter size = 4;
  input [size-1:0] F;
  input Clk;
  output reg[size-1:0] out;
  
  always @(posedge Clk)
    begin
      out = F;
    end
	 
endmodule