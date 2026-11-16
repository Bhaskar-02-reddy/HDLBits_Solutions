module top_module (input x, input y, output z);
    wire f1,f2,f3,f4,s1,s2;
    assign f1 = (x^y) & x;
    assign f2 = ~(x^y);
    assign f3 = (x^y) & x;
    assign f4 = ~(x^y) ;
    assign s1 = f1 | f2;
    assign s2 = f3 & f4;
    assign z = s1 ^ s2 ;

endmodule
