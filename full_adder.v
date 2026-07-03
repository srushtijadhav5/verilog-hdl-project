module FA(a,b,cin,sum,cout);
  input a,b,cin;
  output sum, cout;
  
  assign sum= a^b^cin;
  assign cout= a&b | (cin&a) | (cin&b);
  
endmodule

module tb_FA;
  reg a,b,cin;
  wire sum, cout;
  integer i;
  reg exp_sum, exp_cout;
  
  FA f1(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
 
  initial begin
    $display("Full Adder");
    
    for(i=0; i<8; i++) begin
      {a,b,cin}=i;
      #10;
      exp_sum=a^b^cin;
      exp_cout=a&b | (cin&a) | (cin&b);
      
       if (sum!==exp_sum || cout!== exp_cout)
         $display("Fail: a=%b b=%b cin=%b| sum=%b cout=%b| exp sum=%b exp cout=%b",
                 a,b,cin,sum,cout,exp_sum, exp_cout);
      else 
        $display("Pass: a=%b b=%b cin=%b | sum=%b cout=%b",
                 a,b,cin,sum,cout);
    end
    $finish;
  end 
endmodule
