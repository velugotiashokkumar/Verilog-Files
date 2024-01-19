module encoder_tb();
	reg i0,i1,i2,i3,i4,i5,i6,i7;
	wire a,b,c;
	
	encoder uut(i0,i1,i2,i3,i4,i5,i6,i7,a,b,c);
	
	initial
	begin
		i0=1;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;#10;
		i0=0;i1=1;i2=0;i3=0;i4=0;i5=0;i6=0;i7=0;#10;
		i0=0;i1=0;i2=1;i3=0;i4=0;i5=0;i6=0;i7=0;#10;
		i0=0;i1=0;i2=0;i3=1;i4=0;i5=0;i6=0;i7=0;#10;
		i0=0;i1=0;i2=0;i3=0;i4=1;i5=0;i6=0;i7=0;#10;
		i0=0;i1=0;i2=0;i3=0;i4=0;i5=1;i6=0;i7=0;#10;
		i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=1;i7=0;#10;
		i0=0;i1=0;i2=0;i3=0;i4=0;i5=0;i6=0;i7=1;#10;
	end
	
	initial
	begin
		$dumpfile("encoder.vcd");
		$dumpvars(0,encoder_tb);
		$monitor("i0:%b,i1:%b,i2:%b,i3:%b,i4:%b,i5:%b,i6:%b,i7:%b,a:%b,b:%b,c:%b",i0,i1,i2,i3,i4,i5,i6,i7,a,b,c);
	end
endmodule