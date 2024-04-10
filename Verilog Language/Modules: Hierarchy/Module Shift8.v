module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] t1, t2, t3;
    
    //my_dff8 ( input clk, input [7:0] d, output [7:0] q );
    
    my_dff8 m1 (clk, d, t1);
    my_dff8 m2 (clk, t1, t2);
    my_dff8 m3 (clk, t2, t3);
    
    always @(*)
        begin
            case(sel)
                2'b00 : q = d;
                2'b01 : q = t1;
                2'b10 : q = t2;
                2'b11 : q = t3;
                default : q = {8{1'bx}};
            endcase
        end

endmodule
