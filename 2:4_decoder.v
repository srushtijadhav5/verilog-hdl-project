module decoder_2to4(input En, input[1:0]A, output[3:0]D);

wire En_bar, A0_bar, A1_bar;

not n0(En_bar, En);
not n1(A0_bar, A[0]);   
not n2(A1_bar, A[1]);

and a0(D[0], En_bar, A1_bar, A0_bar);
and a1(D[1], En_bar, A1_bar, A[0]);             
and a2(D[2], En_bar, A[1], A0_bar);
and a3(D[3], En_bar, A[1], A[0]);   
endmodule

// tb_test.v
module tb_decoder_2to4;
reg En;
reg [1:0] A;
wire [3:0] D;

decoder_2to4 uut(.En(En), .A(A), .D(D));

initial begin
  $dumpfile("dump.vcd");
  $dumpfile(1,tb_decoder_2to4);

  $monitor("time=%0t En=%b A=%b D=%b", $time, En, A, D);

    En = 1; A = 2'b00; #10;  //En(inactive)so D should be 0000 regardless of A
    A = 2'b01; #10;
    A = 2'b10; #10;
    A = 2'b11; #10;

    En = 0; A = 2'b00; #10; //En(active)D should one hot decode A
    A = 2'b01; #10;
    A = 2'b10; #10;
    A = 2'b11; #10;

    $finish;
end

endmodule
