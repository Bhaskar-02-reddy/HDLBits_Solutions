// synthesis verilog_input_version verilog_2001
/* Clocked always blocks create a blob of combinational logic just like combinational always blocks,
but also creates a set of flip-flops (or "registers") at the output of the blob of combinational logic.
Instead of the outputs of the blob of logic being visible immediately,
the outputs are visible only immediately after the next (posedge clk). */

module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    assign out_assign = a ^ b ;
    always @(*) out_always_comb = a ^ b ;       // blocking assignment (=) is used  
    always @(posedge clk) out_always_ff <= a^b;   //this produces an delayed op (<= non bocking is used)

endmodule

There are three types of assignments in Verilog:

/* Continuous assignments (assign x = y;). Can only be used when not inside a procedure ("always block").
Procedural blocking assignment: (x = y;). Can only be used inside a procedure.
Procedural non-blocking assignment: (x <= y;). Can only be used inside a procedure. */
