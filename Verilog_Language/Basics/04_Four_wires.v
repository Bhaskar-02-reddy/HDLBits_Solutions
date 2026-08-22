module top_module( 
    input a,b,c,
    output w,x,y,z );
    assign w=a;
    assign x=b;
    assign y=b;
    assign z=c;
    //   assign {w,x,y,z} = { a,b,b,c};    //using concatation
    // although we call result = function is called blocking assignment 
    // an blocking assignment (=) telles the conections or relation between operads that is 
    // perticularly used in combinational circuit design 
    // Sequntial assignment (<=) will be explained later  

endmodule
