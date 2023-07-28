module MUX_2(S, Y, Q, F);
  parameter size = 4;
  input [size-1:0] Y, Q;
  input S;
  output reg [size-1:0] F;
  
  always @(Y or Q or S)
    begin
      case(S)
       0: F <= Q;
       1: F <= Y;
      endcase
    end
endmodule
