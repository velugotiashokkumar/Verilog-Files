module mux_tb;
  reg [2:0]s;
  reg [7:0]i;
  wire o;
  

  mux DUT(o,s,i);
  initial
    begin
      $dumpfile("mux.vcd");
      $dumpvars(0,mux_tb);
      $monitor($time, "s[2]=%b,s[1]=%b,s[0]=%b,o=%b",s[2],s[1],s[0],o);
      i[0]=0;i[1]=1;i[2]=0;i[3]=1;i[4]=0;i[5]=1;i[6]=0;i[7]=1;
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