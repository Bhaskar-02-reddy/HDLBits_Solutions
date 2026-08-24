module top_module( 
    input a, 
    input b, 
    output out );
    assign out = a && b; // make sures that operation matches output width size(one bit in this case) 
    // Verilog has separate bitwise-AND (&) and logical-AND (&&) operators, 
    // like C. Since we're working with a one-bit here, it doesn't matter which we choose.
endmodule
