
// EXAMPLE CODE THAT'S EXPLAINS THE USE OF WIRE FOR AN INVERTER 

module top_module (
    input in,              // Declare an input wire named "in"
    output out             // Declare an output wire named "out"
);

    wire not_in;           // Declare a wire named "not_in"

    assign out = ~not_in;  // Assign a value to out (create a NOT gate).
    assign not_in = ~in;   // Assign a value to not_in (create another NOT gate).

endmodule   // End of module "top_module"





module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

  
    wire w1,w2,w3;   // decaration of the type 'wire' whic typically serves as interconnection 
                        //     between multple blocks / modules .
    assign w1=a&b;
    assign w2=c&d;
    assign w3=w1|w2;
    assign out=w3;
    assign out_n=~w3;

    

endmodule
