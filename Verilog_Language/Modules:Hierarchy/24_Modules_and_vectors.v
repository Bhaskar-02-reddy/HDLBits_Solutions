/* This exercise is an extension of module_shift. 
Instead of module ports being only single pins, 
we now have modules with vectors as ports, 
to which you will attach wire vectors instead of plain wires. 
Like everywhere else in Verilog,
the vector length of the port does not have to match the wire connecting to it, 
but this will cause zero-padding or truncation of the vector.
This exercise does not use connections with mismatched vector lengths. */

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0]w1,w2,w3;
    my_dff8 instance1(.clk(clk), .d(d), .q(w1));  
    my_dff8 instance2(.clk(clk), .d(w1), .q(w2) );
    my_dff8 instance3(.clk(clk), .d(w2), .q(w3) );
    always @(*)
        begin
            case(sel)
                2'b00 : q = d;
                2'b01 : q = w1;
                2'b10 : q = w2;
                2'b11 : q = w3;
             endcase
        end
                
            
              
    

endmodule
