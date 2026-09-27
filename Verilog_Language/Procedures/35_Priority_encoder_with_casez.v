/* Build a priority encoder for 8-bit inputs.
Given an 8-bit vector, the output should report the first (least significant) bit in the vector that is 1.
Report zero if the input vector has no bits that are high. For example, 
the input 8'b10010000 should output 3'd4, because bit[4] is first bit that is high */

// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always @(*)begin
        casez(in)
            8'bzzzzzzz1 : pos = 3'b000;
            8'bzzzzzz10 : pos = 3'b001;
            8'bzzzzz100 : pos = 3'b010;
            8'bzzzz1000 : pos = 3'b011;
            8'bzzz10000 : pos = 3'b100;
            8'bzz100000 : pos = 3'b101;
            8'bz1000000 : pos = 3'b110;
            8'b10000000 : pos = 3'b111;
        endcase
    end
        
endmodule
