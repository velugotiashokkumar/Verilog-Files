module jff_tb ;
	reg clk, rst, j, k;
	wire q,q_bar;
	
	jff DUT(q,q_bar,clk,rst,j,k);
	
	initial
	begin
		$dumpfile("jff.vcd");
		$dumpvars(0,jff_tb);
		$monitor($time," rst:%b,j:%b,k:%b,q:%b,q_bar:%b",rst,j,k,q,q_bar);
	end
	
	always #5 clk = ~clk;
	
	initial
	begin
	clk=0;j=0;k=0;#10;
	rst=1;j=0;k=1;#10;
	rst=1;j=1;k=0;#10;
	rst=0;j=1;k=1;#10;
	j=0;k=0;#10;
	j=0;k=1;#10;
	j=1;k=0;#10;
	j=1;k=1;#10;
	#20 $finish ;
	end
endmodule