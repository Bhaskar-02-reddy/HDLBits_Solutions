module top_module ( input clk, input d, output q );
    wire w1,w2;
    my_dff instance1(.clk(clk), .d(d), .q(w1));     // Name calling                        
    my_dff instance2(.clk(clk), .d(w1), .q(w2));    // data is shifing from one module to next                   
    my_dff instance3(.clk(clk), .d(w2), .q(q) );    // data -> w1 -> w2 -> q        
 
endmodule
