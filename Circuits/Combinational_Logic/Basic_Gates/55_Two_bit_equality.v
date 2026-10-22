/* Create a circuit that has two 2-bit inputs A[1:0] and B[1:0],
and produces an output z.
The value of z should be 1 if A = B, otherwise z should be 0 */

module top_module ( input [1:0] A, input [1:0] B, output z ); 
    assign z = (A==B) ? 1:0;  // an 2:1 MUX WITH (a==b) as control signal ports 

endmodule
