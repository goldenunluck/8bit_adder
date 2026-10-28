`default_nettype none
module adder(
	input [7:0] in0, in1,
	output cout, 
	output [7:0] sum
);
	genvar i;
	wire [7:0] cout_all;
	assign cout = cout_all[7];
	carry_lookahead cla(
		.in0(in0),
		.in1(in1),
		.cout(cout_all)
	);
	generate 
		for ( i = 0; i < 8 ; i = i + 1 ) begin : gen_adder
			if ( i == 0 ) begin
				full_adder fa(
					.in0(in0[i]),
					.in1(in1[i]),
					.cin(1'b0),
					.sum(sum[i])
				);
			end
			else begin
				full_adder fa(
					.in0(in0[i]),
					.in1(in1[i]),
					.cin(cout_all[i-1]),
					.sum(sum[i])
				);
			end
		end
	endgenerate
endmodule
