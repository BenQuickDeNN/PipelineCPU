module sc_datamem (addr,datain,dataout,we,clock,mem_clk,switch,lcd);
 
   input  [31:0]  addr;
   input  [31:0]  datain;
   
   input          we, clock,mem_clk;
   output [31:0]  dataout;
	
	input [9:0] switch;
	output [41:0] lcd;
	
	wire [7:0] innerOut; 
	wire [7:0] sw1;	// 10000000
	wire [7:0] sw2;	// 10000100
	reg [7:0] lcdreg [3:0];	// 10001000  10010000  10011000
     
   wire           write_enable; 
   assign         write_enable = we;  
	
	lpm_ram_dq_dram  dram(addr[6:2],mem_clk,datain,write_enable&(!addr[7]),innerOut);
	
	switch_map s1(sw1, switch[4:0]);
	switch_map s2(sw2, switch[9:5]);
	
	lcd_map l1(lcdreg[1],lcd[13:0]);
	lcd_map l2(lcdreg[2],lcd[27:14]);
	lcd_map l3(lcdreg[3],lcd[41:28]);
	
	wire isLcdReg;
	assign isLcdReg=addr[7]&(addr[3]|addr[4]);
	
	always @(posedge mem_clk)
		if(write_enable&&isLcdReg) lcdreg[addr[4:3]]=datain;
	
	assign dataout=({32{~addr[7]}} & innerOut) | ({32{addr[7:0] == 8'b10000000}} & sw1) | 
		({32{addr[7:0] == 8'b10000100}} & sw2) | ({32{isLcdReg}} & lcdreg[ addr[4:3]]);

endmodule 