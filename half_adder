module half_adder(a,b,sum, cout);
  input a,b;
  output sum, cout;
  
  assign sum= a^b;
  assign cout= a&b;
endmodule

module tb_half_adder;
  reg a,b;
  wire sum, cout;
  integer i;
  reg exp_sum, exp_cout;
  
  half_adder DUT(.a(a), .b(b), .sum(sum), .cout(cout));
  
  initial begin
    $display ("Half Adder");
    for(i=0;i<4;i=i+1)begin
      {a,b}=i;
      #10;
      exp_sum= a^b;
      exp_cout=a&b;
      if (sum!==exp_sum || cout!== exp_cout)
        $display("Fail: a=%b b=%b | sum=%b cout=%b| exp sum=%b exp cout=%b",
                 a,b,sum,cout,exp_sum, exp_cout);
      else 
        $display("Pass: a=%b b=%b | sum=%b cout=%b",
                 a,b,sum,cout);
    end
    $finish;
  end 
endmodule
