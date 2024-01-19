module decoder (a,b,c,o0,o1,o2,o3,o4,o5,o6,o7);
  input a,b,c;
  output o0,o1,o2,o3,o4,o5,o6,o7;
  assign o0 = (~a)&(~b)&(~c);
  assign o1 = (~a)&(~b)&(c);
  assign o2 = (~a)&(b)&(~c);
  assign o3 = (~a)&(b)&(c);
  assign o4 = (a)&(~b)&(~c);
  assign o5 = (a)&(~b)&(c);
  assign o6 = (a)&(b)&(~c);
  assign o7 = (a)&(b)&(c);
endmodule