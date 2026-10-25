module top_module (
    input in1,
    input in2,
    input in3,
    output out);
    wire w1;
    assign w1 = ~ ( in1^ in2);
    assign out = w1 ^ in3 ;

endmodule

//This Verilog code implements a 3-input XNOR-XOR logic circuit.
//First, w1 calculates the XNOR of in1 and in2, then XORs the result with in3 to produce out. 
//The output is HIGH when an even number of the three inputs are 1
