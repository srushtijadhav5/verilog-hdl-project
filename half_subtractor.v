module half_sub(a,b,d,c);
  input a,b;
  output d,c;
  
  assign d= (a^b);
  assign c= (~a)&b;
  
endmodule

module hs_tb;
  reg a,b;
  wire d,c;
  integer i;
  
half_sub DUT(.a(a), .b(b), .d(d), .c(c));
    initial begin
      $monitor("time=%0t, a=%b, b=%b | d=%b, c=%b", $time,a,b,d,c);
      
      $display("Half_Subtractor");
      
      for(i=0; i<4; i++) begin
        {a,b}=i;
        #10;
       
      end
      $finish;
    end
  endmodule
  
