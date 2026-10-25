module top_module ( 
    input p1a, p1b, p1c, p1d,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    assign p1y = ~ ( p1a & p1b & p1c & p1d);
    assign p2y = ~ ( p2a & p2b & p2c & p2d);


endmodule

//This Verilog code implements two independent 4-input NAND gates. 
//Each output (p1y and p2y) is the negation of the AND operation of its four respective inputs, producing 0 only when all four inputs are 1; 
//otherwise, the output is 1
