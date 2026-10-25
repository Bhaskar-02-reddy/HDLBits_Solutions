module top_module( 
    input [99:0] in,
    output out_and,
    output out_or,
    output out_xor 
);
    assign out_and = & in;
    assign out_or = | in;
    assign out_xor = ^ in;

endmodule

//This Verilog code uses reduction operators to perform AND, OR, and XOR operations on all 100 bits of the input vector.
//out_and is HIGH only if all bits are 1, out_or is HIGH if at least one bit is 1, and out_xor is HIGH if the number of 1s is odd.
