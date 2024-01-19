module parity_gen_tb;
	reg x,clk;
	wire z;
	
	parity_gen PARY (x, clk, z);
	
	always
		#5 clk = ~clk;
		
	initial 
		begin
		clk = 1'b0;
		#100 $finish;
		end
	
	initial 
		begin
		#2 x=0; #10 x=1; #10 x=1; #10 x=0;
		#10 x=1; #10 x=1; #10 x=0; #10 x=1;
		#10 x=0; #10 x=0; #10 x=1;
		end
		
	initial begin
		$dumpfile("parity.vcd");
		$dumpvars(0,parity_gen_tb);
		$monitor($time, " x : %b, Z : %b",x,z);
		end
endmodule
		