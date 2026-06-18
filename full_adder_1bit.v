// Code your testbench here
// or browse Examples

module full_adder_1bit(
    input a,b,cin,
    output sum,cout
);
    assign sum=a^b^cin;
    assign cout=(a&b)|(cin&(a^b));
endmodule

module tb_full_adder;
    reg a,b,cin;
    wire sum,cout;
    
    full_adder_1bit fa(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    
    initial begin
        $display("a b cin | sum cout");
        $display("---------+-----------");
        
      {a,b,cin}=3'b000; #10; $display("%b %b %b   |  %b    %b",a,b,cin,sum,cout);
      {a,b,cin}=3'b001; #10; $display("%b %b %b   |  %b    %b",a,b,cin,sum,cout);
        {a,b,cin}=3'b010; #10; $display("%b %b %b   |  %b    %b",a,b,cin,sum,cout);
        {a,b,cin}=3'b011; #10; $display("%b %b %b   |  %b    %b", a,b,cin,sum,cout);
      {a,b,cin}=3'b100; #10; $display("%b %b %b   |  %b    %b", a,b,cin,sum,cout);
        {a,b,cin}=3'b101; #10; $display("%b %b %b   |  %b    %b", a,b,cin,sum,cout);
      {a,b,cin}=3'b110; #10; $display("%b %b %b   |  %b    %b",a,b,cin,sum,cout);
        {a,b,cin}=3'b111; #10; $display("%b %b %b   |  %b    %b", a,b,cin,sum,cout);
        
        $finish;
      
    end
    endmodule
