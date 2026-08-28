module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

//  The 7400-series integrated circuits are a series of digital chips with a few gates each.
//    The 7420 is a chip with two 4-input NAND gates.

// Actual question 
   //  Create a module with the same functionality as the 7420 chip. It has 8 inputs and 2 outputs.


    wire w1,w2,w3,w4;
  
    assign w1=(p1a & p1b & p1c);
    assign w2= p2a&p2b;
    assign w3 = p2c & p2d;
    assign w4 = p1f & p1d & p1e;
    assign p2y = w2 | w3;
    assign p1y = w1 | w4;


endmodule
