// There are many full adders to instantiate. 
// An instance array or generate statement would help here
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    wire [100:0]carry;
    assign carry[0] = cin;
    genvar i ;
    generate // used when we physically want n-copies of perticular hardware blocks (adders in this sol code)
        for(i=0; i<100; i=i+1)
//assign cout[i] = carry[i+1]; 
            begin : adder    // under adder -> add1[0].fa 
               				 //                 add1[1].fa 
                add1 fa (.a(a[i]), .b(b[i]), .cin(carry[i]), .cout(carry[i+1]), .sum(sum[i]) ) ;
                assign cout[i] = carry[i+1]; // we have to assign the first carry out signal to next carry_in(cin) 
            end										// that's why we are storing it  
    endgenerate
                
                
endmodule

module add1( input a, input b, input cin, output cout, output sum );
    assign sum = a ^ b ^ cin;
    assign cout = (((a^b)&cin)|(a&b));
endmodule
