module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    //Use a 32-bit wide XOR gate to invert the b input whenever sub is 1.
    //(This can also be viewed as b[31:0] XORed with sub replicated 32 times. See replication operator.).
    //Also connect the sub input to the carry-in of the adder.
    wire c1;
    add16 instance1( .a(a[15:0]), .b(b[15:0] ^ {16{sub}}),  .cin(sub), .cout(c1), .sum(sum[15:0]) );
    add16 instance2( .a(a[31:16]), .b(b[31:16] ^ {16{sub}}), .cin(c1), .cout(), .sum(sum[31:16])  );

endmodule
