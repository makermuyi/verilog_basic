// (c) fpga4fun.com & KNJN LLC 2013

////////////////////////////////////////////////////////////////////////
module OBUFDS(
	input I, // input
	output O, // positive output
	output OB // negative output
);

assign O = I;
assign OB = ~I;

endmodule
////////////////////////////////////////////////////////////////////////
