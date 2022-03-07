`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:27:12 10/26/2021 
// Design Name: 
// Module Name:    clock 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clock(input RESET,
				 input clk, 					//100 MHz
				 output reg clk_1hz, 		//1 Hz
				 output reg ssg_clk); 		//500 Hz

//1 Hz clock
reg [25:0] ctr1 = 0;
parameter dv1 = 26'd50_000_000;

//500 Hz clock
reg [25:0] ctrs = 0;
parameter dvs = 26'd100_000;

//100 MHz -> 1 Hz
always @(posedge clk, posedge RESET) begin
	if (RESET) begin
		ctr1 <= 0;
		clk_1hz <= 0;
	end else if (ctr1 == dv1 - 1) begin
		ctr1 <= 0;
		clk_1hz <= ~clk_1hz;
	end else begin
		ctr1 <= ctr1 + 1;
		clk_1hz <= clk_1hz;
	end 
end

//100 Mhz -> 500 Hz
always @(posedge clk, posedge RESET) begin
	if (RESET) begin
		ctrs <= 0;
		ssg_clk <= 0;
	end else if (ctrs == dvs - 1) begin
		ctrs <= 0;
		ssg_clk <= ~ssg_clk;
	end else begin
		ctrs <= ctrs + 1;
		ssg_clk <= ssg_clk;
	end 
end

endmodule

