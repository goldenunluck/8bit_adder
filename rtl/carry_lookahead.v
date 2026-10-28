`default_nettype none
module carry_lookahead(
	input [7:0] in0, in1,
	output reg [7:0] cout
);
	integer i;
	reg [7:0] gen, prop;
	always @(*) begin
		for ( i = 0 ; i < $bits(cout) ; i = i + 1 ) begin
			gen[i] = in0[i] & in1[i]; prop[i] = in0[i] | in1[i];
			if ( i == 0 ) cout[i] = gen[i];
			else cout[i] = gen[i] | ( cout[i-1] & prop[i] );
		end
	end
endmodule
	
