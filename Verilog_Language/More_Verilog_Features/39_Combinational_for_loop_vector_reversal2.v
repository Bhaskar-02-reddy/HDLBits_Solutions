module top_module( 
    input [99:0] in,
    output [99:0] out
);
	integer i;
    always @(*)
        begin
    		for (i=0; i<100; i=i+1)
        		begin
                   	out[i] = in[99-i];
        		end
        end
endmodule

//This Verilog code reverses the order of bits in a 100-bit input vector.
//Using a for loop, it assigns each bit of in to the corresponding opposite-position bit in out, so in[99] becomes out[0] and in[0] becomes out[99].
