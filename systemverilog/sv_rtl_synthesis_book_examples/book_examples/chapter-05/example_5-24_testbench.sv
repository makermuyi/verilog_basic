//
// Book, "RTL Modeling with SystemVerilog for ASIC and FPGA Design"
// by Stuart Sutherland
//
// Testbench
//
// Copyright 2016, Stuart Sutherland. All rights reserved.
//
// Version 1.0
//

`begin_keywords "1800-2012"
module top;
  timeunit 1ns/1ns;
  parameter N = 8;
  logic signed [N-1:0] a, b;     // adder inputs
  logic                ci;       // adder input
  logic signed [N-1:0] sum;      // adder output
  logic                co, ov;   // adder outputs

  signed_adder_test  #(.N(N)) test (.*);
  signed_adder_good  #(.N(N)) dut  (.*);

endmodule: top

module signed_adder_test
#(parameter N = 8)
(output logic signed [N-1:0] a, b,   // signed inputs
 output logic                ci,     // unsigned 1-bit inputs
 input  logic signed [N-1:0] sum,    // signed output
 input  logic                co, ov  // unsigned 1-bit output
);
  timeunit 1ns/1ns;

  initial begin
  	$timeformat(-9, 0, "ns", 6);  // nanoseconds, no precision, 6 columns
    $display("\nSigned adder with carry-in cast to signed");

  	#5 a = +5;   b =   1; ci = '1;  #1 check_results(.s(7),   .c(0), .o(0));  
  	#5 a = -5;   b =   1; ci = '1;  #1 check_results(.s(-3),  .c(0), .o(0));  

  	#5 a = +104; b = +45; ci = '0;  #1 check_results(.s(149), .c(0), .o(1));  
  	#5 a = +127; b = +0;  ci = '1;  #1 check_results(.s(128), .c(0), .o(1));  
  	#5 a = -103; b = -69; ci = '0;  #1 check_results(.s(-172),.c(1), .o(1));  
  	#5 a = -1;   b = +1;  ci = '0;  #1 check_results(.s(0),   .c(1), .o(0));  

    #5 $finish;
  end

  task check_results(int s, bit c, o);
    $display("a=%4d, b=%4d, ci=%b", a, b, ci);
    $display("EXPECT: sum=%4d, co=%b, ov=%b", s, c, o);
    $write  ("ACTUAL: sum=%4d, co=%b, ov=%b", sum, co, ov);
    if (sum===s && co===c && ov===o) $display(" -- PASS! \n");
    else                             $display(" -- ERROR! \n");
  endtask

endmodule: signed_adder_test

`end_keywords
