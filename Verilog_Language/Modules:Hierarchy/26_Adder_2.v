/* top_module — Your top-level module that contains two of...
add16, provided — A 16-bit adder module that is composed of 16 of...
add1 — A 1-bit full adder module. */


module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire c_out;
    add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(0), .cout(c_out), .sum(sum[15:0] ) );
    add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(c_out), .cout(), .sum(sum[31:16]) );

endmodule

/* If your submission is missing a module add1, 
you will get an error message that says Error (12006): Node instance "user_fadd[0].
a1" instantiates undefined entity "add1" */

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
	assign sum = a ^ b ^ cin;
    assign cout = ((a^b)&cin) | (a&b) ;
endmodule
