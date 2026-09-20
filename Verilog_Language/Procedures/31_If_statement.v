// synthesis verilog_input_version verilog_2001
/* An if statement usually creates a 2-to-1 multiplexer,
    selecting one input if the condition is true,
    and the other input if the condition is false */
module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 
    assign out_assign = (sel_b1 & sel_b2)? b:a;
    always @(*)
        begin
            if( sel_b1 & sel_b2) 
                begin
                    out_always = b;
                end
            else
                begin
                    out_always = a;
                end
        end
    // assign out_always = (sel_b1 & sel_b2) b:a;  single iline multiplixer
endmodule
