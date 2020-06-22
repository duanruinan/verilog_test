`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/22 11:23:54
// Design Name: 
// Module Name: tb_block
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_block();
	reg clk_i;
	reg rst_n_i;
	wire [4:0] result_o_block, result_o_unblock;
	
	unblock unblock_inst(
		.clk_i(clk_i),
		.rst_n_i(rst_n_i),
		.result_o(result_o_unblock)
	);
	
	block block_inst(
		.clk_i(clk_i),
		.rst_n_i(rst_n_i),
		.result_o(result_o_block)
	);
	
	initial begin
		clk_i = 0;
		rst_n_i = 0;
		#20; /* reset 20ns */
		rst_n_i = 1;
		#20;
	end

	always #10 clk_i = ~clk_i; /* 50 MHz */
endmodule
