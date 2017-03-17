module lcd_map(num, lcd);
	input [7:0] num;
	output [13:0] lcd;
	reg [3:0] high;
	reg [3:0] low;
	reg [7:0] buffer;
	
	initial
	begin
		low=0;
		high=0;
	end
	
	always @(*)
		begin
		buffer = num;
		low=0;
		high=0;
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		if(buffer>=10)
			begin
			high=high+1'b1;
			buffer=buffer-4'b1010;
			end
		low=buffer[3:0];
		end
	
	sevenseg low_display(low, lcd[6:0]);
	sevenseg high_display(high, lcd[13:7]);
endmodule
