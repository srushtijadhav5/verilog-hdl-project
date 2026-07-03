//behavioural-keyword always- outputs r always in reg
module ha(a,b,c,s);
  input a,b;
  output reg c, s;
  always @(*)
    begin
      s=a^b;
      c=a&b;
    end
endmodule
