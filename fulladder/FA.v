module FA(a,b,cin,sum,cout);
  output sum, cout;
  input a, b,cin;
  always@(a,b,cin);
  assign sum = a^b^cin;
  assign cout = (a&b)|(b&cin)|(cin&a);
endmodule