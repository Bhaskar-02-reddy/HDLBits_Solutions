module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    wire [15:0]w1,w2,w3;
    add16 instance1( .a(a[15:0]), .b(b[15:0]), .sum(w3), .cin(0), .cout(sel) );
    add16 instance2( .a(a[31:16]), .b(b[31:16]), .sum(w1), .cin(0), .cout() );
    add16 instance3( .a(a[31:16]), .b(b[31:16]), .sum(w2), .cin(1), .cout() );
    assign sum[15:0]=w3;
    assign sum[31:16] = (sel) ? w2:w1;
endmodule
