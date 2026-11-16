module top_module (input x, input y, output z);
assign z = (x ^ y) & x;
endmodule


//This Verilog code implements a combinational logic circuit using XOR and AND operations.
//The output z is HIGH only when x = 1 and y = 0, simplifying the expression to z = x & ~y
