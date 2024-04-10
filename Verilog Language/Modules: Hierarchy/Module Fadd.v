module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire c1, c2;
    //module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    add16 m1 ( a[15:0], b[15:0], 1'b0, sum[15:0], c1 );
    add16 m2 ( a[31:16], b[31:16], c1, sum[31:16], c2 );
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    
    assign sum = a + b + cin;
    assign cout = a*b + b*cin + a*cin;

endmodule
