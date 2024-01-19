`timescale 1ns/1ps
module pipo (o, clk, rst, i);
	input clk, rst;
	input [3:0] i;
	output [3:0] o;
	
	dff D1 (o[0],clk,rst,i[0]);
	dff D2 (o[1],clk,rst,i[1]);
	dff D3 (o[2],clk,rst,i[2]);
	dff D4 (o[3],clk,rst,i[3]);
	
endmodule

module dff (q,clk,rst,d);
	input clk, rst, d;
	output reg q;
	
	always@(posedge clk or rst)
	begin
	if (rst)
		q<=0;
	else
		q<= d;
	end
endmodule