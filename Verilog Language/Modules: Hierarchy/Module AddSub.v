module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0] t1, t2;
    wire c1,c2;
    
    assign t1 = {16{sub}} ^ b[15:0];
    assign t2 = {16{sub}} ^ b[31:16];
    
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    add16 m1 ( a[15:0], t1, sub, sum[15:0], c1 );
    
    add16 m2 ( a[31:16], t2, c1, sum[31:16], c2 );

endmodule
