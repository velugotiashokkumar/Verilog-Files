module ha_tb();
  
  reg  a, b;
  wire  sum, carry;
  
  ha uut(sum,carry,a,b);
  
  initial
    begin 
  a = 0; b =0;
  #5; a = 0; b =1;
  #5; a = 1; b =0;
  #5; a = 1; b =1;
  #5;
    end
initial
  begin
    $dumpfile("half.vcd");
    $dumpvars(0,ha_tb);
    $monitor(a,b);
  end 
 
endmodule