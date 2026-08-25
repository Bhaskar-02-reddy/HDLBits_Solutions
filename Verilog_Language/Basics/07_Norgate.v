module top_module( 
    input a, 
    input b, 
    output out );
    assign out = ~ (a | b);  // Nand is the complement of and 
    
endmodule
