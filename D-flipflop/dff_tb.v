module dff_tb ;
	reg clk, rst, d;
	wire q,q_bar;
	
	dff DUT(q,q_bar,clk,rst,d);
	
	initial
	begin
		$dumpfile("dff.vcd");
		$dumpvars(0,dff_tb);
		$monitor($time," rst:%b,d:%b,q:%b,q_bar:%b",rst,d,q,q_bar);
	end
	
	always #5 clk = ~clk;
	
	initial
	begin
	clk=0;d=0;#10;
	rst=1;d=1;#10;
	rst=1;d=0;#10;
	rst=0;d=1;#10;
	d=0;#10;
	d=1;#10;
	d=0;#10;
	d=1;#10;
	#20 $finish ;
	end
endmodule