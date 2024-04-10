module FA(a, b, cin, sum, cout);
    
    input a,b,cin;
    output sum,cout;
    
    assign sum = a^ b^ cin;
    assign cout = (a&b) | (b&cin) | (a&cin);
    
endmodule


module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    
    genvar p;
    
    FA m1(a[0], b[0], cin, sum[0], cout[0]);
    
    generate 
        for(p=1; p<100; p++)
            begin: rip_add
                FA m2(a[p], b[p], cout[p-1], sum[p], cout[p]);
            end
    endgenerate
                
endmodule
 

