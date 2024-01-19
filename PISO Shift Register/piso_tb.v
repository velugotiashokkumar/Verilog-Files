module piso_tb;
	reg clk,rst,ld;
	reg [3:0] i;
	wire o;
	
	piso DUT(o, clk, rst, ld, i);
	
	always #5 clk = ~clk;
	
	initial 
	begin
		clk=0;rst=1;#5;
		rst=0;ld=0;#5;
		ld=1;i=10;#10;
		ld=0;#50
		#5 $finish;
	end
	
	initial
	begin
		$dumpfile("piso.vcd");
		$dumpvars(0,piso_tb);
		$monitor($time," rst:%b,i:%b,o:%b",rst,i,o);
	end
endmodule