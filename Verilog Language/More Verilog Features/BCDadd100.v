module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] c;
    genvar i;
    
    bcd_fadd m1 (a[3:0], b[3:0], cin, c[0], sum[3:0]);
    
    
    generate
        for(i=4; i<400; i=i+4)
            begin : BCD_RCA
                bcd_fadd m2 (a[i+3:i], b[i+3:i], c[i/4 -1], c[i/4], sum[i+3:i]);
            end
    endgenerate
    
    assign cout = c[99];
            
endmodule
