/* Given five 1-bit signals (a, b, c, d, and e),
compute all 25 pairwise one-bit comparisons in the 25-bit output vector.
The output should be 1 if the two bits being compared are equal */

module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

      
    //assign out = ~  { a, b, c, d, e} ^ {5{a,b,c,d,e}} ; wrong because size are not matching
    assign out = ~ { {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ { 5{a,b,c,d,e}};
endmodule
