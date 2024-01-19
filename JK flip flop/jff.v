`timescale 1ns/1ps
module jff (q,q_bar,clk,rst,j,k);
	input clk, rst, j, k;
	output reg q, q_bar;
	
	always@(posedge clk or rst)
	begin
	if (rst)
		q<=0;
	else
		if (j==0 & k==0)
			q<=q;
		else if (j==0 & k==1)
			q<=0;
		else if (j==1 & k==0)
			q<=1;
		else if (j==1 & k==1)
			q<= ~q;
	end
	always #1 q_bar<=~q;
endmodule