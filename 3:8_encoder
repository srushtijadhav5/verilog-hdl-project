module encoder_8to3(
    input En,
    input [7:0] I,
    output reg [2:0] Y
);

always @(En, I)
begin
    if (En==1) 
    begin
        if (I[7]==1) Y=3'b111;
        else if (I[6]==1) Y=3'b110;
        else if (I[5]==1) Y=3'b101;
        else if (I[4]==1) Y=3'b100;
        else if (I[3]==1) Y=3'b011;
        else if (I[2]==1) Y=3'b010;
        else if (I[1]==1) Y=3'b001;
        else Y=3'b000;
    end
    else Y=3'bzzz;
end

endmodule
// tb_test.v
module enc_tb;
reg En;
reg [7:0] I;
wire [3:0] Y;
integer i;

encoder_8to3 uut(
.En(En), .Y(Y), .I(I)
);

initial begin
  En=1;
  $dumpfile("dumpvars.vcd");
  $dumpvars(1,enc_tb);

  $monitor("time=%0t, En=%b, I=%b, Y=%b", $time, En, I, Y);

  for(i=0; i<8; i=i+1)
  begin
    I=8'b00000000;
    I[i]=1'b1;
    #10;
  end
  $finish;
end
endmodule

