`timescale 1ns/1ps
module siso (o, clk, rst, i);
	input clk, rst;
	input i;
	output o;
	wire [2:0] a;
	
	dff D1 (a[0],clk,rst,i);
	dff D2 (a[1],clk,rst,a[0]);
	dff D3 (a[2],clk,rst,a[1]);
	dff D4 (o,clk,rst,a[2]);
	
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