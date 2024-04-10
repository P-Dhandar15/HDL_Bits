module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    
    wire c1, c2, c3;
    wire [15:0] t1, t2;
    
  // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
	
    add16 m1 (a[15:0], b[15:0], 1'b0, sum[15:0], c1);
    
    add16 m2 (a[31:16], b[31:16], 1'b0, t1[15:0], c2);
    add16 m3 (a[31:16], b[31:16], 1'b1, t2[15:0], c3);
    
    always @(*)
        begin

            if(c1 == 0)
                sum[31:16] = t1[15:0];
            else
                sum[31:16] = t2[15:0];
        end

endmodule
