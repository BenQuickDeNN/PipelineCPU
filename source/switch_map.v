module switch_map(num, switches);
	input [4:0] switches;
	output [7:0] num;
	assign num = (switches[4]<<4)+(switches[3]<<3)+(switches[2]<<2)+(switches[1]<<1)+switches[0];
endmodule
