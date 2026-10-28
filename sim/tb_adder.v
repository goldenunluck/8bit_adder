`default_nettype none
`timescale 1ps/1ps
module tb_module;
	reg [7:0] tb_in[1:0];
	wire tb_cout;
	wire [7:0] tb_sum;
	adder adder_inst(
		.in0(tb_in[0]),
		.in1(tb_in[1]),
		.cout(tb_cout),
		.sum(tb_sum)
	);
	initial begin
	$dumpfile("adder_sim_output.vcd"); $dumpvars(0, tb_module);
	tb_in[0] = {8{1'b0}}; tb_in[1] = {8{1'b0}};
	#90000;
	$finish;
	end
	always begin
	#1 tb_in[0][0] = ~ tb_in[0][0];
	end
	always begin
	#2 tb_in[0][1] = ~ tb_in[0][1];
	end
	always begin
	#4 tb_in[0][2] = ~ tb_in[0][2]; 
	end
	always begin
	#8 tb_in[0][3] = ~ tb_in[0][3]; 
	end
	always begin
	#16 tb_in[0][4] = ~ tb_in[0][4]; 
	end
	always begin
	#32 tb_in[0][5] = ~ tb_in[0][5];
	end
	always begin
	#64 tb_in[0][6] = ~ tb_in[0][6]; 
	end
	always begin
	#128 tb_in[0][7] = ~ tb_in[0][7]; 
	end
	
	always begin 
	#256 tb_in[1][0] = ~ tb_in[1][0];
	end
	always begin
	#512 tb_in[1][1] = ~ tb_in[1][1];
	end
	always begin
	#1024 tb_in[1][2] = ~ tb_in[1][2];
	end
	always begin
	#2048 tb_in[1][3] = ~ tb_in[1][3];
	end
	always begin
	#4096 tb_in[1][4] = ~ tb_in[1][4];
	end
	always begin 
	#8192 tb_in[1][5] = ~ tb_in[1][5];
	end
	always begin
	#16384 tb_in[1][6] = ~ tb_in[1][6];
	end
	always begin
	#32768 tb_in[1][7] = ~ tb_in[1][7];
	end
endmodule
