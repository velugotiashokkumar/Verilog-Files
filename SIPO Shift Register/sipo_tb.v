module sipo_tb;
	reg clk,rst;
	reg i;
	wire [3:0] o;
	
	sipo DUT(o, clk, rst, i);
	
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
		$dumpfile("sipo.vcd");
		$dumpvars(0,sipo_tb);
		$monitor($time," rst:%b,i:%b,o:%b",rst,i,o);
	end
endmodule