module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] t1, t2, t3;
    // assign intermediate_result1 = compare? true: false;
    assign t1 = a;
    assign t2 = (t1>b)? b : t1;
    assign t3 = (t2>c)? c : t2;
    assign min = (t3>d)? d : t3;    

endmodule
