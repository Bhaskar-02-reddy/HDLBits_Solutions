// synthesis verilog_input_version verilog_2001

/* A common source of errors: How to avoid making latches
When designing circuits, you must think first in terms of circuits:

I want this logic gate
I want a combinational blob of logic that has these inputs and produces these outputs
I want a combinational blob of logic followed by a set of flip-flops
What you must not do is write the code first, then hope it generates a proper circuit.

If (cpu_overheated) then shut_off_computer = 1;
If (~arrived) then keep_driving = ~gas_tank_empty; */
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated)
           shut_off_computer = 1;
    end

    always @(*) begin
        if (~arrived)
           keep_driving = ~gas_tank_empty;
    end

endmodule

/* Syntactically-correct code does not necessarily result in a reasonable circuit (combinational logic + flip-flops).
The usual reason is: "What happens in the cases other than those you specified?". 
Verilog's answer is: Keep the outputs unchanged. */
