`default_nettype none
module full_adder(
	input in0, in1, cin,
	output sum
);
	assign sum = in0 ^ in1 ^ cin;
endmodule
	
