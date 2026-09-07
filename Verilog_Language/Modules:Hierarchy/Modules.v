


module top_module ( input a, input b, output out );
  mod_a instance1 (.out(out), .in1(a), .in2(b)); // calling by name 
endmodule
//module mod_a (in1(.a), in2(.b), out(.out));
