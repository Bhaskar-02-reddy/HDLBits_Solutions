module top_module (
    input in1,
    input in2,
    output out);
    assign out = ~(in1 | in2);

endmodule

//This Verilog code implements a 2-input NOR gate using the OR (|) and NOT (~) operators. 
//The output out is HIGH only when both inputs (in1 and in2) are LOW; otherwise, the output is LOW.
