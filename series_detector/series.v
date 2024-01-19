module series (clk, x, rst, z);
	input clk, x, rst;
	output reg z;
	reg [0:2] pstate, nstate;
	parameter s0=0, s1=1, s2=2, s3=3, s4=4, s5=5;
	
	always@(posedge clk or posedge rst)
		if (rst) pstate <= s0;
		else pstate <= nstate;
		
	always@(pstate,x)
		case(pstate)
		s0 : begin z = x ? 0:0; nstate <= x ? s1 : s0; end
		s1 : begin z = x ? 0:0; nstate <= x ? s1 : s2; end
		s2 : begin z = x ? 0:0; nstate <= x ? s3 : s0; end
		s3 : begin z = x ? 0:0; nstate <= x ? s0 : s4; end
		s4 : begin z = x ? 0:0; nstate <= x ? s5 : s0; end
		s5 : begin z = x ? 1:1; nstate <= x ? s4 : s0; end
		endcase
		
endmodule