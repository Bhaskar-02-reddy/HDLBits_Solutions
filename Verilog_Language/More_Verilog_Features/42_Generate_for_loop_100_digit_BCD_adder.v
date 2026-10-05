module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [100:0] carry;
    genvar i;  
    													
    assign carry[0] = cin;
    													
    generate 
        for( i=0; i<100; i=i+1)
            begin: bcd_adr
                add3 fa( .a(a[4*i+3:4*i]), .b(b[4*i+3:4*i]), .cin(carry[i]), .cout(carry[i+1]), .sum(sum[4*i+3:4*i]) );
             end
    endgenerate
    assign cout=carry[100];
endmodule

module add3( input [3:0]a,b, input cin, output reg cout, output reg [3:0] sum );
  
    reg [4:0] tem ; // tem is an temprorvary variable that can hold upto 5 bits in it 
   
    always @(*)
        begin
            tem = a + b + cin; //BCD addition (NOT bitwise add)
          
            if(tem>9)
                begin
                    tem=tem+6;  // temp is 5 bits but sum needs only 4 bits so slie only the last 4 bite 
                    sum=tem[3:0];
                    cout=1'b1;
                end
            else
                begin
                    sum=tem[3:0];
                    cout=1'b0;
                end
        end
endmodule
