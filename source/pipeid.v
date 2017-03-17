module pipeid(mwreg, mrn, ern, ewreg, em2reg, mm2reg, dpc4, inst, 
					wrn, wdi, ealu, malu, mmo, wwreg, clock, resetn, bpc, 
					jpc, pcsource, wpcir, dwreg, dm2reg, dwmem, daluc, daluimm, 
					da, db, dimm, drn, dshift, djal);
	input [31:0] dpc4;
	input [31:0] inst;
	input mwreg, ewreg, em2reg, mm2reg;
	input [4:0] mrn, ern, wrn;
	input [31:0] wdi, ealu, malu, mmo;
	input wwreg, clock, resetn;
	output [31:0] bpc, jpc;
	output [1:0] pcsource;
	output wpcir, dwreg, dm2reg, dwmem;
	output [3:0] daluc;
	output daluimm;
	output [31:0] da, db, dimm;
	output [4:0] drn;
	output dshift, djal;
	
	wire          zero,wmem,wreg,regrt,m2reg,shift,aluimm,jal,sext;
	wire [3:0]    aluc;
	wire [31:0]   sa = { 27'b0, inst[10:6] };
	wire          e = sext & inst[15];
	wire [15:0]   imm = {16{e}};
	wire [31:0]   immediate = {imm,inst[15:0]};
	wire [31:0]   offset = {imm[13:0],inst[15:0],1'b0,1'b0};
	wire [1:0]	  fwda,fwdb;
	wire 			  wpcir,rsrtequ;
	wire 			  dwmem, dwreg, dm2reg, daluimm, djal, dshift;
	wire [3:0]	  daluc;
	wire [4:0]	  drn;
	wire [31:0]   ra,rb;
	
	assign bpc = dpc4 + offset;
   wire [31:0] jpc = {dpc4[31:28],inst[25:0],1'b0,1'b0}; 
			
	assign fwda[0]= (ewreg & (ern!=0) & (ern==inst[25:21]) & ~em2reg) | (mwreg & (mrn!=0) & (mrn==inst[25:21]) & mm2reg);
	assign fwda[1]= (mwreg & (mrn!=0) & (mrn==inst[25:21]) & ~mm2reg) | (mwreg & (mrn!=0) & (mrn==inst[25:21]) & mm2reg);
	assign fwdb[0]= (ewreg & (ern!=0) & (ern==inst[20:16]) & ~em2reg) | (mwreg & (mrn!=0) & (mrn==inst[20:16]) & mm2reg);
	assign fwdb[1]= (mwreg & (mrn!=0) & (mrn==inst[20:16]) & ~mm2reg) | (mwreg & (mrn!=0) & (mrn==inst[20:16]) & mm2reg);
	assign rsrtequ=(da==db);
   assign wpcir=em2reg & ((ern==inst[25:21]) | (ern==inst[20:16]));
	assign dwmem=wpcir?1'b0:wmem;
	assign dwreg=wpcir?1'b0:wreg;
	assign dm2reg=wpcir?1'b0:m2reg;
	assign daluc=wpcir?4'b0000:aluc;
	assign daluimm=wpcir?1'b0:aluimm;
	assign dshift=wpcir?1'b0:shift;
	assign djal=wpcir?1'b0:jal;

   pipe_cu cu (inst[31:26],inst[5:0],rsrtequ,wmem,wreg,regrt,m2reg,
                        aluc,shift,aluimm,pcsource,jal,sext);
	
	mux2x5 reg_wn (inst[15:11],inst[20:16],regrt,drn);   
	mux4x32 alu_a (ra,ealu,malu,mmo,fwda,da);
	mux4x32 alu_b (rb,ealu,malu,mmo,fwdb,db);
	mux2x32 dimm_shift (immediate,sa,dshift,dimm); 
	
	//if(da==db) rsrtequ=1;
                        
   //mux2x32 alu_b (rb,immediate,aluimm,alub);
   //mux2x32 alu_a (ra,sa,shift,alua);
//   mux2x32 result(alu,mem,m2reg,alu_mem);
//   mux2x32 link (alu_mem,p4,jal,res);
   //mux2x5 reg_wn (inst[15:11],inst[20:16],regrt,reg_dest);
//   assign wn = reg_dest | {5{jal}}; // jal: r31 <-- p4;      // 31 or reg_dest
//   mux4x32 nextpc(p4,adr,ra,jpc,pcsource,npc);
   regfile rf (inst[25:21],inst[20:16],wdi,wrn,wwreg,clock,resetn,ra,rb);
					
endmodule
