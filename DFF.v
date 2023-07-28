module DFF(Clk, F, Reg);
  parameter size = 4;
  input [size-1:0] F;
  input Clk;
  output reg [size-1:0] Reg;
  
  always @(posedge Clk)
    begin
      Reg <= F;
    end
endmodule