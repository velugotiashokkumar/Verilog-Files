module gates (c,d,e,f,g,h,i,a,b);
	input a,b;
	output reg c,d,e,f,g,h,i;
	always@(a,b)
	begin
		c <= a & b;
		d <= a | b;
		e <= ~a;
		f <= a ~& b;
		g <= a ~| b;
		h <= a ^ b;
		i <= a ~^ b;
	end
endmodule