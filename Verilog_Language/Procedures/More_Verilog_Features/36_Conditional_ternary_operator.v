/* Verilog has a ternary conditional operator ( ? : ) much like C:

(condition ? if_true : if_false) */

/* Given four unsigned numbers, find the minimum. 
Unsigned numbers can be compared with standard comparison operators (a < b). 
Use the conditional operator to make two-way min circuits, 
then compose a few of them to create a 4-way min circuit.
You'll probably want some wire vectors for the intermediate results */

module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    wire [7:0] m1,m2;
    
    assign m1 = (a<b) ? a:b;
    assign m2 = (c<d) ? c:d;
    assign min = (m1<m2)? m1:m2;

    // assign intermediate_result1 = compare? true: false;

endmodule
