// synthesis verilog_input_version verilog_2001
/* A priority encoder is a combinational circuit that, when given an input bit vector,
outputs the position of the first 1 bit in the vector.
For example, a 8-bit priority encoder given the input 8'b10010000 would output 3'd4,
because bit[4] is first bit that is high */

module top_module (
    input [3:0] in,
    output reg [1:0] pos  );
    always @(*) begin
        casex(in) // this is LSB priority encoder         // this is MSB priority encoder
            4'bxxx1 : pos = 2'b00;							//4'b1xxx : pos = 2'b11;
            4'bxx10 : pos = 2'b01;							//4'b01xx : pos = 2'b10;
            4'bx100 : pos = 2'b10;							//4'b001x : pos = 2'b01;
            4'b1000 : pos = 2'b11;							//4'b0001 : pos = 2'b00;
            default : pos = 0;
        endcase
    end 

endmodule
