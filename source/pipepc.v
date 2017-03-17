module pipepc(npc, wpcir, clock, resetn, pc);
	input [31:0] npc;
	input wpcir, clock, resetn;
	output [31:0] pc;
	reg [31:0] pc;
	
	initial
		begin
			pc=0;
		end
	
	always @(negedge resetn or posedge clock)
		begin
			if (resetn==0)
			begin
				pc=-4;
			end
			else 
			begin
				if(!wpcir) pc=npc;
			end
		end

endmodule
