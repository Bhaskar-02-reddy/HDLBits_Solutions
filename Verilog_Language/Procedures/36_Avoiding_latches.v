// synthesis verilog_input_version verilog_2001
/* Suppose you're building a circuit to process scancodes from a PS/2 keyboard for a game.
Given the last two bytes of scancodes received, 
you need to indicate whether one of the arrow keys on the keyboard have been pressed. 
This involves a fairly simple mapping,
which can be implemented as a case statement (or if-elseif) with four cases */

module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 
    always @(*) 
        begin
            left=1'b0; down = 1'b0; right=1'b0; up=1'b0; 
            case(scancode)
                16'he06b : left = 1'b1;
                16'he072 : down = 1'b1;
                16'he074 : right = 1'b1;
                16'he075 : up = 1'b1;
                default : begin
                             up=0;
                    		down=0;
                    		right=0;
                    		up=0;
                			end
            endcase
        end
                
                
                

endmodule
