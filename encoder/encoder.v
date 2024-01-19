module encoder (i0,i1,i2,i3,i4,i5,i6,i7,a,b,c);
	input i0,i1,i2,i3,i4,i5,i6,i7;
	output a,b,c;
	assign a = i1|i3|i5|i7;
	assign b = i2|i3|i6|i7;
	assign c = i4|i5|i6|i7;
endmodule