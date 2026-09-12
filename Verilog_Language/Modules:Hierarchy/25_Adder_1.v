module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w1,w2;
    wire c1;
    add16 instance1( .a(a[15:0]), .b(b[15:0]), .sum(w1), .cin(0), .cout(c1) );
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .sum(w2), .cin(c1), .cout(1'bz) );
    assign sum[15:0] = w1;
    assign sum[31:16] = w2 ;
    

endmodule
