module FA_tb();
  
  reg  a,b,cin;
  wire  sum,cout;
  
  FA uut(a,b,cin,sum,cout);
  
  initial
    begin
      a =0; b =0;cin =0;
  #20; a =0; b =0;cin =1;
  #20; a =0; b =1;cin =0;
  #20; a =0; b =1;cin =1;
  #20; a =1; b =0;cin =0;
  #20; a =1; b =0;cin =1;
  #20; a =1; b =1;cin =0;
  #20; a =1; b =1;cin =1;
  #20;
    end
initial
    begin
      $dumpfile("full.vcd");
      $dumpvars(0,FA_tb);
      $monitor(a,b,cin);
    end
endmodule