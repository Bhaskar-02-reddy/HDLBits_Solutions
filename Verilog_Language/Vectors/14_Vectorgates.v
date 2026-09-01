module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise = a | b;    // butwise or
    assign out_or_logical = a || b;   // logical or
    assign out_not[5:3] = ~b;     // inverter b for msb(most significant bit)
    assign out_not[2:0] = ~a;     // inverter a for lsb(liest significant bit)

endmodule
