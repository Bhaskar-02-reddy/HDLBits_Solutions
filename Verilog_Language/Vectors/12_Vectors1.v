`default_nettype none     // Disable implicit nets. Reduces some types of bugs.
module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );

    // A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16], etc.).
    // Build a circuit that will reverse the byte ordering of the 4-byte word
    
    assign out_hi = in [15:8]; // Part-select can be used on both the left side and right side of an assignment.
    assign out_lo = in [7:0];

endmodule
