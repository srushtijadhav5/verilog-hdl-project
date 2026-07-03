module ha(a,b,s,c);
  input a,b;
  output s,c;
  xor(s,a,c);
  and(c,a,b);
endmodule

module half_adder_tb;
  reg a,b;
  wire s,c;
  integer i;
  
  ha DUT(.a(a), .b(b), .c(c), .s(s));
  
  initial begin
   
    $monitor("time=%0t, a=%b, b=%b | s=%b, c=%b", $time, a, b, s, c);
 
    $display("Half Adder");
    for(i=0;i<4;i++)begin
      {a,b}=i;
      #2;
    end
    
    $finish;
  end
endmodule
    
