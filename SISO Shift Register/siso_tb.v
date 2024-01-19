module siso_tb;
	reg clk,rst;
	reg i;
	wire o;
	
	siso DUT(o, clk, rst, i);
	
	always #5 clk = ~clk;
	
	initial 
	begin
		clk=0;rst=1;#5;
		rst=0;#5;
		i=0;#40;
		i=1;#40;
		i=0;#40;
		i=1;#40;
		i=0;#40;
		i=1;#40;
		i=0;#40;
		i=1;#40;
		i=0;#40;
		i=1;#40;
		i=0;#40;
		i=1;#40;
		i=0;#40;
		i=1;#40;
		i=0;#40;
		i=1;#40;
		#5 $finish;
	end
	
	initial
	begin
		$dumpfile("siso.vcd");
		$dumpvars(0,siso_tb);
		$monitor($time," rst:%b,i:%b,o:%b",rst,i,o);
	end
endmodule