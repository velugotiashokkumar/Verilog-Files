module DMUX (o,s,i);
	input i;
	input [2:0] s;
	output [7:0] o;
	
	and A1(o[0],~s[2],~s[1],~s[0],i);
	and A2(o[1],~s[2],~s[1],s[0],i);
	and A3(o[2],~s[2],s[1],~s[0],i);
	and A4(o[3],~s[2],s[1],s[0],i);
	and A5(o[4],s[2],~s[1],~s[0],i);
	and A6(o[5],s[2],~s[1],s[0],i);
	and A7(o[6],s[2],s[1],~s[0],i);
	and A8(o[7],s[2],s[1],s[0],i);
	
endmodule