`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/22 11:04:40
// Design Name: 
// Module Name: block
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


module block(input clk_i, input rst_n_i, output reg [4:0] result_o);
	reg [3:0] a;
	reg [3:0] b;
	reg [4:0] c;
	
	always @(posedge clk_i)
		if (!rst_n_i) begin
			#2 a = 4'd4;
			#0.2 b = 4'd12;
			#0.2 c = 5'd0;
			#0.2 result_o = 5'd0;
		end else begin
			#2 c = a + b;
			#0.2 result_o = c >> 1;
		end
endmodule
