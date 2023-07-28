module decoder(wrt_addr, A, B, C, D);
  input [1:0] wrt_addr;
  output reg A, B, C, D;
  
  always @(wrt_addr)
    begin
      case(wrt_addr)
        00: begin A=1; B=0; C=0; D=0; end
        01: begin A=0; B=1; C=0; D=0; end
        10: begin A=0; B=0; C=1; D=0; end
        default: begin A=0; B=0; C=0; D=1; end
      endcase
    end
endmodule