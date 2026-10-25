module top_module (
    input in1,
    input in2,
    output out);
    assign out = (in1 & (~in2) );

endmodule

//This Verilog code implements an AND gate with an inverted second input.
//The output out is HIGH only when in1 = 1 and in2 = 0. 

