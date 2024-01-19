module cyclic_lamp (clock,light);
	input clock;
	output reg [0:2] light;
	parameter s0=0,s1=1,s2=2;
	parameter red = 3'b100, yellow = 3'b010, green = 3'b001;
	reg [0:1] state;
	
	always@(posedge(clock))
		case(state)
		s0: state<=s1;
		s1: state<=s2;
		s2: state<=s0;
		default: state<=s0;
		endcase
	
	always@(state)
		case(state)
		s0: light=red;
		s1: light=yellow;
		s2: light=green;
		default: light=red;
		endcase
		
endmodule