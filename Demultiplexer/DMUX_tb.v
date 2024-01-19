module DMUX_tb ;
	reg i;
	reg [2:0] s;
	wire [7:0] o;
	
	DMUX DUT(o,s,i);
	initial 
		begin
			$dumpfile("DMUX.vcd");
			$dumpvars(0,DMUX_tb);
			$monitor("s[2]:%b,s[1]:%b,s[0]:%b,o:%b",s[2],s[1],s[0],o);
			i=1;
			s[2]=0;s[1]=0;s[0]=0;#10;
			s[2]=0;s[1]=0;s[0]=1;#10;
			s[2]=0;s[1]=1;s[0]=0;#10;
			s[2]=0;s[1]=1;s[0]=1;#10;
			s[2]=1;s[1]=0;s[0]=0;#10;
			s[2]=1;s[1]=0;s[0]=1;#10;
			s[2]=1;s[1]=1;s[0]=0;#10;
			s[2]=1;s[1]=1;s[0]=1;#10;
			$finish;
		end
endmodule
	