module comp (o,a,b);
	input [1:0] a, b;
	output reg [1:0] o;
	// o=0 for a<b, o=1 for a>b, o=2 for a=b and for other condition o=3
	always@(a,b)
	begin
		if (a[1:0] < b[1:0]) 
		o=0;
		else if (a[1:0] > b[1:0]) 
		o=1;
		else if (a[1:0] == b[1:0]) 
		o=2;
		else
		o=3;
	end
endmodule