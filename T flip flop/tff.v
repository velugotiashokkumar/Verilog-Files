`timescale 1ns/1ps
module tff (q,q_bar,clk,rst,t);
	input clk, rst, t;
	output reg q,q_bar;
	
	always@(posedge clk or rst)
	begin
	if (rst)
		q<=0;
	else
		if (t==0)
			q<= q;
		else if (t==1)
			q<= ~q;
	end
	always #1 q_bar<= ~q;
endmodule