module cyclic_lamp_tb;
	reg clock;
	wire [0:2] light;
	
	cyclic_lamp LAMP (clock,light);
	always #5 clock=~clock;
	initial
		begin
		clock = 1'b0;
		#100 $finish;
		end
	initial
		begin
		$dumpfile("lamp.vcd");
		$dumpvars(0, cyclic_lamp_tb);
		$monitor($time, " : RYG1 : %b", light);
		end
endmodule