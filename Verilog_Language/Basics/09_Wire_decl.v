`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

  
    wire w1,w2,w3;
    assign w1=a&b;
    assign w2=c&d;
    assign w3=w1|w2;
    assign out=w3;
    assign out_n=~w3;

endmodule
