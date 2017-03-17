module pipemem(mwmem, malu, mb, resetn, clock, mem_clock, mmo, switch, lcd);
	input mwmem,resetn;
	input [31:0] malu, mb;
	input clock, mem_clock;
	output [31:0] mmo;
	input [9:0] switch;
	output [41:0] lcd;
	wire [31:0] wmmo;
	
	assign mmo = wmmo & {32{resetn}};
	
	sc_datamem dmem(malu,mb,wmmo,mwmem,clock,mem_clock, switch, lcd);

endmodule
