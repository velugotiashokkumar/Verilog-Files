module decoder_tb();
  
  reg a,b,c;
  wire o0,o1,o2,o3,o4,o5,o6,o7;
  
  decoder uut(a,b,c,o0,o1,o2,o3,o4,o5,o6,o7);
  
  initial
    begin
      a=0;b=0;c=0;#10;
      a=0;b=0;c=1;#10;
      a=0;b=1;c=0;#10;
      a=1;b=0;c=0;#10;
      a=1;b=0;c=1;#10;
      a=1;b=1;c=0;#10;
      a=1;b=1;c=1;#10;
    end
  initial
    begin
      $dumpfile("decoder.vcd");
      $dumpvars(0,decoder_tb);
      $monitor("a:%b,b:%b,c:%b,o0:%b,o1:%b,o2:%b,o3:%b,o4:%b,o5:%b,o6:%b,o7:%b",a,b,c,o0,o1,o2,o3,o4,o5,o6,o7);
    end
endmodule