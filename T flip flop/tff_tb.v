module tff_tb ;
	reg clk, rst, t;
	wire q,q_bar;
	
	tff DUT(q,q_bar,clk,rst,t);
	
	initial
	begin
		$dumpfile("tff.vcd");
		$dumpvars(0,tff_tb);
		$monitor($time," rst:%b,t:%b,q:%b,q_bar:%b",rst,t,q,q_bar);
	end
	
	always #5 clk = ~clk;
	
	initial
	begin
	clk=0;t=0;#10;
	rst=1;t=0;#10;
	rst=0;t=1;#10;
	rst=0;t=1;#10;
	t=0;#10;
	t=0;#10;
	t=1;#10;
	t=1;#10;
	#20 $finish ;
	end
endmodule