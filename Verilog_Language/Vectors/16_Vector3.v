module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    /*wire [31:0]tatal;
    //assign tatal = { a,b,c,d,e,f,2'b11};
    //assign w = tatal[31:24];
    //assign x = tatal[23:16];
    //assign y = tatal[15:8];
    //assign z = tatal[7:0];
     THE ABOW ONE IS BIG BUT CLEAR STEP ,
  below one is one line concatination that sets automatically unless the siz'z is same */

    assign {w,x,y,z } = { a, b, c, d, e, f, 2'b11  };

    /*
    Part selection was used to select portions of a vector. The concatenation operator 
    {a,b,c} is used to create larger vectors by concatenating smaller portions of a vector together

endmodule
