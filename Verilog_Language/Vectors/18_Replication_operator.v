module top_module (
    input [7:0] in,
    output [31:0] out );//
  
    // assign out = { replicate-sign-bit , the-input };
    assign out  = { {24{in[7]}} , in };   // use case of concatination operation ( just like in python or c++)
endmodule         //{num{vector}}

/* The concatenation operator allowed concatenating together vectors to form a larger vector.
But sometimes you want the same thing concatenated together many times,
and it is still tedious to do something like assign a = {b,b,b,b,b,b};.
The replication operator allows repeating a vector and concatenating them together:  */



