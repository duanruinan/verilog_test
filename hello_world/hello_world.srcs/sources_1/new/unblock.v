`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/22 11:16:03
// Design Name: 
// Module Name: unblock
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


module unblock(input clk_i, input rst_n_i, output reg [4:0] result_o);
	reg [3:0] a;
	reg [3:0] b;
	reg [4:0] c;
	
	always @(posedge clk_i)
		if (!rst_n_i) begin
			a <= 4'd4;
			b <= 4'd12;
			c <= 5'd0;
			result_o = 5'd0;
		end else begin
			c <= a + b;
			result_o <= c >> 1;
		end
endmodule
