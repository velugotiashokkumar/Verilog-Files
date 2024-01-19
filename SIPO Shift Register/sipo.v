`timescale 1ns/1ps
module sipo (o, clk, rst, i);
	input clk, rst;
	input i;
	output [3:0] o;
	
	dff D1 (o[0],clk,rst,i);
	dff D2 (o[1],clk,rst,o[0]);
	dff D3 (o[2],clk,rst,o[1]);
	dff D4 (o[3],clk,rst,o[2]);
	
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