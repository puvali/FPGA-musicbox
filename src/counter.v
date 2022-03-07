`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:32:58 10/27/2021 
// Design Name: 
// Module Name:    counter 
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
module counter(input RESET,
					input song_sel, 						//switch songs
					input pause,
					input clk_1hz,
					output reg [5:0] mins1,
					output reg [5:0] secs1,
					output reg [5:0] mins2,
					output reg [5:0] secs2); 
	
always @(posedge clk_1hz, posedge RESET) begin
	if (RESET) begin
		mins1 = 0;
		secs1 = 0;
		mins2 = 0;
		secs2 = 0;
	end 
	
	//paused on song 1
	else if (pause && ~song_sel) begin
		mins1 = mins1;
		secs1 = secs1;
	end 
	
	//paused on song 2
	else if (pause && song_sel) begin
		mins2 = mins2;
		secs2 = secs2;
	end 
	
	//playing song 1
	else if (~song_sel) begin
		mins2 = 0;
		secs2 = 0;
		if (mins1 == 59 && secs1 == 59) begin
			mins1 = 0;
			secs1 = 0;
		end else if (secs1 == 59) begin
			mins1 = mins1 + 1;
			secs1 = 0;
		end else begin
			secs1 = secs1 + 1;
		end  
	end 
	
	//playing song 2 
	else begin
		mins1 = 0;
		secs1 = 0;
		if (mins2 == 59 && secs2 == 59) begin
			mins2 = 0;
			secs2 = 0;
		end else if (secs2 == 59) begin
			mins2 = mins2 + 1;
			secs2 = 0;
		end else begin
			secs2 = secs2 + 1;
		end 
	end 
end

endmodule
