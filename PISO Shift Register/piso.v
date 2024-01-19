`timescale 1ns/1ps
module piso (o, clk, rst, ld, i);
	input clk, rst, ld;
	input [3:0] i;
	output reg o;
	reg [3:0] a;
	
	always@(posedge clk | rst)
	begin
		if (rst)
			o<=0;
		else if (ld)
			a[3:0]<=i[3:0];
		else if (clk)
			a[3:1]<=a[2:0];
	end
	always #1 o<=a[3];
endmodule