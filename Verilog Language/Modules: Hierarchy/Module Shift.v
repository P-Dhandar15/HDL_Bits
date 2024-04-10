module top_module ( input clk, input d, output q );

    wire t1, t2;
    
    my_dff m1 (clk, d, t1);
    my_dff m2 (clk, t1, t2);
    my_dff m3 (clk, t2, q);
    
endmodule
