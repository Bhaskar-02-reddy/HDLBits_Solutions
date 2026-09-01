// HINT PROVIDED :
// Even though you cannot assign to a wire more than once,
// you can use a part select on the left-hand-side of an assign.
// You don't need to assign to the entire vector all in one statement.
module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise = a | b;    // butwise or
    assign out_or_logical = a || b;   // logical or
    assign out_not[5:3] = ~b;     // inverter b for MSB(most significant bit)
    assign out_not[2:0] = ~a;     // inverter a for LSB(liest significant bit)

endmodule
