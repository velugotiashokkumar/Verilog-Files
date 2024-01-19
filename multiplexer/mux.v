module mux(o,s,i);
	input [7:0] i;
	input [2:0] s;
	output o;
	wire s0,s1,s2,a1,a2,a3,a4,a5,a6,a7,a8;
		not N1(s0,s[0]);
		not N2(s1,s[1]);
		not N3(s2,s[2]);
		and A1(a1,s0,s1,s2,i[0]);
		and A2(a2,s[0],s1,s2,i[1]);
		and A3(a3,s0,s[1],s2,i[2]);
		and A4(a4,s[0],s[1],s2,i[3]);
		and A5(a5,s0,s1,s[2],i[4]);
		and A6(a6,s[0],s1,s[2],i[5]);
		and A7(a7,s0,s[1],s[2],i[6]);
		and A8(a8,s[0],s[1],s[2],i[7]);
		or O1(o,a1,a2,a3,a4,a5,a6,a7,a8);
endmodule