module gates_tb();

	reg a,b;
	wire c,d,e,f,g,h,i;
	
	gates uut(c,d,e,f,g,h,i,a,b);
	
	initial 
	begin
	a=0;b=0;#5;
	a=0;b=1;#5;
	a=1;b=0;#5;
	a=1;b=1;#5;
	end
	
	initial begin
		$dumpfile("gates.vcd");
		$dumpvars(0,gates_tb);
		$monitor("a:%b,b:%b,c:%b,d:%b,e:%b,f%b,g:%b,h:%b,i:%b",a,b,c,d,e,f,g,h,i);
	end
	endmodule