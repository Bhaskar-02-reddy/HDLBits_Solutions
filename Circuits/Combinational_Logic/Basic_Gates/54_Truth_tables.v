module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    assign f = ((~x3)&x2&(~x1)) | ((~x3)& x2 & x1) | (x3&(~x2)&x1) | (x3&x2&x1);

endmodule

//This Verilog code implements a 3-input combinational logic circuit using Boolean expressions. 
//The output f is HIGH when the input combination is 010, 011, 101, or 111.

