module pipereg(dwreg, dm2reg, dwmem, daluc, daluimm, da, db, dimm, 
						drn, dshift, djal, dpc4, clock, resetn, ewreg, em2reg, 
						ewmem, ealuc, ealuimm, ea, eb, eimm, ern0, eshift, ejal, epc4);
	input dwreg, dm2reg, dwmem;
	input [3:0] daluc;
	input daluimm;
	input [31:0] da, db, dimm;
	input [4:0] drn;
	input dshift, djal;
	input [31:0] dpc4;
	input clock, resetn;
	output ewreg, em2reg, ewmem;
	output [3:0] ealuc;
	output ealuimm;
	output [31:0] ea, eb, eimm;
	output [4:0] ern0;
	output eshift, ejal;
	output [31:0] epc4;
	reg ewreg, em2reg, ewmem;
	reg [3:0] ealuc;
	reg ealuimm;
	reg [31:0] ea, eb, eimm;
	reg [4:0] ern0;
	reg eshift, ejal;
	reg [31:0] epc4;
	
	always @(posedge clock or negedge resetn)
		begin
		if(resetn==0)
			begin
			ewreg=0;
			em2reg=0;
			ewmem=0;
			ealuc=0;
			ealuimm=0;
			ea=0;
			eb=0;
			eimm=0;
			ern0=0;
			eshift=0;
			ejal=0;
			epc4=0;
			end
		else
			begin
			ewreg=dwreg;
			em2reg=dm2reg;
			ewmem=dwmem;
			ealuc=daluc;
			ealuimm=daluimm;
			ea=da;
			eb=db;
			eimm=dimm;
			ern0=drn;
			eshift=dshift;
			ejal=djal;
			epc4=dpc4;
			end
		end

endmodule
