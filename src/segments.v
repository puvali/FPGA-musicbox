`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:11 10/27/2021 
// Design Name: 
// Module Name:    display 
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
module segments(input [3:0] digit,
					output reg [6:0] cathode);

always @* begin
	case (digit) 		  //ABCDEFG
		4'd0: cathode = 7'b0000001;
		4'd1: cathode = 7'b1001111;
		4'd2: cathode = 7'b0010010;
		4'd3: cathode = 7'b0000110;
		4'd4: cathode = 7'b1001100;
		4'd5: cathode = 7'b0100100;
		4'd6: cathode = 7'b0100000;
		4'd7: cathode = 7'b0001111;
		4'd8: cathode = 7'b0000000;
		4'd9: cathode = 7'b0000100;
		default: cathode = 7'b1111111;
	endcase 
	end
	
endmodule
