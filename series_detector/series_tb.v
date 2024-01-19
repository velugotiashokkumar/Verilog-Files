module series_tb;
	reg clk, rst, x;
	wire z;
	
	series SER (clk, x, rst, z);
	
	always #5 clk = ~clk;
	
	initial 
		begin
		$dumpfile("series.vcd");
		$dumpvars(0,series_tb);
		$monitor($time, " rst : %b, x : %b, z : %b", rst, x, z);
		clk = 1'b0;
		end
		
	initial 
		begin
		#1 rst=0; x=0;
		#1 rst=1; x=0;
		#1 rst=0; x=0;
		#10 x=1; #10 x=1; #10 x=0; #10 x=1; #10 x=0; #10 x=1; #10 x=0; #10 x=1; #10 x=1; #10 $finish;
		end
endmodule