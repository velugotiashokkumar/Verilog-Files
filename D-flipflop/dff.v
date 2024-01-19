`timescale 1ns/1ps
module dff (q,q_bar,clk,rst,d);
	input clk, rst, d;
	output reg q,q_bar;
	
	always@(posedge clk or rst)
	begin
	if (rst)
		q<=0;
	else
		q<= d;
	end
	always #1 q_bar<= ~q;
endmodule