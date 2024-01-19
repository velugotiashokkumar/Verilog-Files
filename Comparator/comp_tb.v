module comp_tb;
	reg [1:0] a, b;
	wire [1:0] o;
	
	comp DUT(o,a,b);
	
	initial 
	begin
		a=0;b=0;#10;
		a=0;b=1;#10;
		a=0;b=2;#10;
		a=0;b=3;#10;
		a=1;b=0;#10;
		a=1;b=1;#10;
		a=1;b=2;#10;
		a=1;b=3;#10;
		a=2;b=0;#10;
		a=2;b=1;#10;
		a=2;b=2;#10;
		a=2;b=3;#10;
		a=3;b=0;#10;
		a=3;b=1;#10;
		a=3;b=2;#10;
		a=3;b=3;#10;
		$finish;
	end
	
	initial
	begin
		$dumpfile("comp.vcd");
		$dumpvars(0,comp_tb);
		$monitor("a:%d,b:%d,o:%b",a,b,o);
	end
endmodule