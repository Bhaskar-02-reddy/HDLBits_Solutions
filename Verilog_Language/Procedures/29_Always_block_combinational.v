// synthesis verilog_input_version verilog_2001

Since digital circuits are composed of logic gates connected with wires, any circuit can be expressed as some combination of modules and assign statements. However, sometimes this is not the most convenient way to describe the circuit. 
    
    Procedures (of which always blocks are one example) provide an alternative syntax for describing circuits
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    assign out_assign = a & b;
    always @(*) out_alwaysblock = a & b;

endmodule

//This Verilog code implements a 2-input AND gate in two different ways:
//using a continuous `assign` statement for `out_assign` and an `always @(*)` procedural block for `out_alwaysblock`.
//Both outputs produce `1` only when both inputs `a` and `b` are `1`, demonstrating two equivalent methods of describing combinational logic.
