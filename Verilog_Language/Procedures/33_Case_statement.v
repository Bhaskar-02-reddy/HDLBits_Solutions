/* Case statements in Verilog are nearly equivalent to a sequence
of if-elseif-else that compares one expression to a list of others. 
Its syntax and functionality differs from the switch statement in C*/
// synthesis verilog_input_version verilog_2001
module top_module ( 
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    output reg [3:0] out   );//

    always@(*) begin  // This is a combinational circuit
        case({sel})
            3'b000 : out = data0;
            3'b001 : out = data1;
            3'b010 : out = data2;
            3'b011 : out = data3;
            3'b100 : out = data4;
            3'b101 : out = data5;
            default : out = 0 ;
        endcase
    end

endmodule

/* The case statement begins with case and each "case item" ends with a colon. There is no "switch".
Each case item can execute exactly one statement. This makes the "break" used in C unnecessary. But this means that if you need more than one statement, you must use begin ... end.
Duplicate (and partially overlapping) case items are permitted. The first one that matches is used. C does not allow duplicate case items */
