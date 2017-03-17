module pipeexe(ealuc, ealuimm, ea, eb, eimm, eshift, ern0, epc4, ejal, ern, ealu);
	input [31:0] epc4;
	input [31:0] ea, eb, eimm;
	input [3:0] ealuc;
	input eshift,ealuimm,ejal;
	input [4:0] ern0;
	output [4:0] ern;
	output [31:0] ealu;
	wire [31:0] alua,alub;
	wire [31:0] tmpalu;
	wire zero;
	wire [31:0] epcp;
	
	assign epcp=epc4 + 32'h4;
	
	mux2x32 ealu_a(ea,eimm,eshift,alua);
   mux2x32 ealu_b(eb,eimm,ealuimm,alub);
	
	alu al_unit (alua,alub,ealuc,tmpalu,zero);
	
	mux2x32 jal (tmpalu,epcp,ejal,ealu);
	
	assign ern=ejal?5'b11111:ern0;

endmodule
