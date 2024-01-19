module pipo_tb;
	reg clk,rst;
	reg [3:0] i;
	wire [3:0] o;
	
	pipo DUT(o, clk, rst, i);
	
	always #5 clk = ~clk;
	
	initial 
	begin
		clk=0;rst=1;#5;
		rst=0;#5;
		i=0;#10;
		i=1;#10;
		i=2;#10;
		i=3;#10;
		i=4;#10;
		i=5;#10;
		i=6;#10;
		i=7;#10;
		i=8;#10;
		i=9;#10;
		i=10;#10;
		i=11;#10;
		i=12;#10;
		i=13;#10;
		i=14;#10;
		i=15;#10;
		#5 $finish;
	end
	
	initial
	begin
		$dumpfile("pipo.vcd");
		$dumpvars(0,pipo_tb);
		$monitor($time," rst:%b,i:%b,o:%b",rst,i,o);
	end
endmodule