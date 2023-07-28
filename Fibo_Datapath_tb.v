module Fibo_Datapath_tb ();
  parameter size = 4;
  reg [size-1:0] count;
  reg [size-2:0] alu_opcode;
  reg [1:0] wrt_addr, rd_addr1, rd_addr2;
  reg Clk, wrt_en, load_data;
  wire [size-1:0] data;
  wire zero_flag;
  
  Fibo_Datapath Fibonacci (Clk, wrt_addr, wrt_en, load_data, rd_addr1, rd_addr2, alu_opcode, count, data, zero_flag);
  
  always #5 Clk = ~Clk;
  
  initial 
    begin
      
      Clk=0; wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b01; rd_addr2=2'b11; alu_opcode=3'b001; count=4'b1010; 
 	 		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b10; rd_addr2=2'b01; alu_opcode=3'b010; count=4'b0100;
    		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b01; rd_addr2=2'b10; alu_opcode=3'b001; count=4'b1001;
    		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b01; rd_addr2=2'b01; alu_opcode=3'b110; count=4'b0010;
    		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b10; rd_addr2=2'b01; alu_opcode=3'b010; count=4'b1011;
    		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b10; rd_addr2=2'b10; alu_opcode=3'b111; count=4'b1100;
    		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b11; rd_addr2=2'b10; alu_opcode=3'b110; count=4'b0101;
    		#10 wrt_addr=1; wrt_en=0; load_data=1; rd_addr1=2'b10; rd_addr2=2'b11; alu_opcode=3'b110; count=4'b1110;
    		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b01; rd_addr2=2'b01; alu_opcode=3'b101; count=4'b1111;
    		#10 wrt_addr=0; wrt_en=1; load_data=0; rd_addr1=2'b10; rd_addr2=2'b10; alu_opcode=3'b110; count=4'b1000;
    		#10 wrt_addr=1; wrt_en=1; load_data=1; rd_addr1=2'b11; rd_addr2=2'b10; alu_opcode=3'b101; count=4'b1010;
    		#10 wrt_addr=1; wrt_en=0; load_data=1; rd_addr1=2'b11; rd_addr2=2'b11; alu_opcode=3'b111; count=4'b1101;
    		
	 	end
endmodule
