`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:29 11/18/2021 
// Design Name: 
// Module Name:    musicbox 
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
module musicbox(input clk,				 
					 input RESET, 					//Reset
					 input pause,					//0 = play, 1 = pause
					 input song_sel,				//Select song
					 output AUDIO_IP, 			//AMP2 Pin 1: Audio Input
					 output GAIN_SEL, 			//AMP2 Pin 2: Gain Selection
					 output reg ALS,				//AMP2 Pin 4: Active Low Shutdown	
					 output reg [3:0] anode,
					 output reg [6:0] cathode,
					 output reg ld7, 
					 output reg ld6,
					 output reg ld5,
					 output reg ld4,
					 output reg ld3,
					 output reg ld2,
					 output reg ld1,
					 output reg ld0);

parameter clkf = 100_000_000;		//100 MHz clock frequency
reg speaker;


//instantiating clocks for timer & seven-segment display
wire clk_1hz, ssg_clk;
clock clk_ins(RESET, clk, clk_1hz, ssg_clk); 


reg [11:0] dv;				//divisor for clock divider logic
reg [11:0] note_ctr;		//clock divider counter for notes
reg [7:0] octave_ctr;	//clock divider counter for octaves


reg [33:0] tone;
always @(posedge clk) begin
	if (RESET)
		tone = 0;
	else if (pause)
		tone = tone;
	else
		tone = tone + 1;
end


reg [10:0] fullnote;
wire [10:0] fullnote1;
wire [10:0] fullnote2;


ROM1 rom1(.clk(clk), .address(tone[31:23]), .note(fullnote1));
ROM2 rom2(.clk(clk), .address(tone[32:24]), .note(fullnote2));


always @(pause) begin	
	if (RESET) begin
		ALS = 0;	
	end else if (pause) begin
		ALS = 0;	
	end else if (~pause) begin
		ALS = 1;
	end
end 


//song 1 minutes and seconds 
wire [5:0] mins1;
wire [5:0] secs1;

//song 2 minutes and seconds 
wire [5:0] mins2;
wire [5:0] secs2;

//instantiate song time counter
counter ctr_ins(RESET, song_sel, pause, clk_1hz, mins1, secs1, mins2, secs2);

//how long the song has been playing
reg [5:0] minutes;
reg [5:0] seconds;

wire [3:0] min_tens; 
wire [3:0] min_ones;
wire [3:0] sec_tens;
wire [3:0] sec_ones;


always @(song_sel) begin
	//song 1
	if (~song_sel) begin
		fullnote = fullnote1;
		minutes = mins1;
		seconds = secs1;
	//song2
	end else begin
		fullnote = fullnote2;
		minutes = mins2;
		seconds = secs2;
	end
end

assign min_tens = minutes / 10;
assign min_ones = minutes - (min_tens * 10);
assign sec_tens = seconds / 10;
assign sec_ones = seconds - (sec_tens * 10);


wire [2:0] octave;
wire [3:0] note;

divideby12 db12(.numerator(fullnote[5:0]), .quotient(octave), .remainder(note));

//Note frequencies are 110 Hz, 117 Hz, ... , 208 Hz
//256 * 2 = 512 is for the 2nd (lowest) octave
always @ (note) begin
	case(note)
		0: 		dv = clkf / 512 / 110 - 1;		//A
		1: 		dv = clkf / 512 / 117 - 1;		//Bb
		2: 		dv = clkf / 512 / 123 - 1;		//B
		3: 		dv = clkf / 512 / 131 - 1;		//C
		4: 		dv = clkf / 512 / 139 - 1;		//Db
		5: 		dv = clkf / 512 / 147 - 1;		//D
		6: 		dv = clkf / 512 / 156 - 1;		//Eb
		7: 		dv = clkf / 512 / 165 - 1;		//E
		8: 		dv = clkf / 512 / 175 - 1;		//F
		9: 		dv = clkf / 512 / 185 - 1;		//Gb
		10:		dv = clkf / 512 / 196 - 1;		//G
		11: 		dv = clkf / 512 / 208 - 1;		//Ab
		default: dv = 0;
	endcase 
end

always @(posedge clk) begin
	//if paused, all LEDs dark
	if (pause || RESET) begin
			ld7 = 0; 		 	
			ld6 = 0;
			ld5 = 0;
			ld4 = 0;
			ld3 = 0;
			ld2 = 0;
			ld1 = 0;
			ld0 = 0;
	
	end else begin
		case(note) 
			0:  begin 
					ld7 = 1; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 0;
					ld3 = 0;
					ld2 = 0;
					ld1 = 0;
					ld0 = 0; 
				end	//A
			
			1:	 begin 
					ld7 = 0; 		 	
					ld6 = 1;
					ld5 = 0;
					ld4 = 0;
					ld3 = 0;
					ld2 = 0;
					ld1 = 0;
					ld0 = 1; 
				end	//Bb
			
			2:	 begin 
					ld7 = 0; 		 	
					ld6 = 1;
					ld5 = 0;
					ld4 = 0;
					ld3 = 0;
					ld2 = 0;
					ld1 = 0;
					ld0 = 0; 
				end	//B
			
			3:  begin 
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 1;
					ld4 = 0;
					ld3 = 0;
					ld2 = 0;
					ld1 = 0;
					ld0 = 0;
				end	//C
			
			4:  begin 
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 1;
					ld3 = 0;
					ld2 = 0;
					ld1 = 0;
					ld0 = 1; 
				end 	//Db
			
			5:  begin 
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 1;
					ld3 = 0;
					ld2 = 0;
					ld1 = 0;
					ld0 = 0;
				end 	//D
			
			6:  begin 
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 0;
					ld3 = 1;
					ld2 = 0;
					ld1 = 0;
					ld0 = 1; 
				end	//Eb
			
			7:  begin 
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 0;
					ld3 = 1;
					ld2 = 0;
					ld1 = 0;
					ld0 = 0;
				end	//E
			
			8:  begin 
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 0;
					ld3 = 0;
					ld2 = 1;
					ld1 = 0;
					ld0 = 0; 
				end	//F
			
			9:  begin 
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 0;
					ld3 = 0;
					ld2 = 0;
					ld1 = 1;
					ld0 = 1; 
				end	//Gb
			
			10: begin 	
					ld7 = 0; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 0;
					ld3 = 0;
					ld2 = 0;
					ld1 = 1;
					ld0 = 0;
				end	//G
			
			11: begin 
					ld7 = 1; 		 	
					ld6 = 0;
					ld5 = 0;
					ld4 = 0;
					ld3 = 0;
					ld2 = 0;
					ld1 = 0;
					ld0 = 1;
				end	//Ab
		endcase
	end
end
		 
		
//clock divider logic for note using general divisor dv
always @(posedge clk) begin
	if (note_ctr == 0)
		note_ctr = dv;
	else
		note_ctr = note_ctr - 1;
end 


//clock divider logic for octave with octave-specific divisors
always @(posedge clk) begin
	if (note_ctr == 0) begin		
		if (octave_ctr == 0) begin
			case(octave)
				0: octave_ctr = 255;
				1: octave_ctr = 127;
				2: octave_ctr = 63;
				3: octave_ctr = 31;
				4: octave_ctr = 15;
				default: octave_ctr = 7;
			endcase
		end else 
			octave_ctr = octave_ctr - 1;
	end
end


always @(posedge clk) begin
	if (note_ctr == 0 && octave_ctr == 0 && fullnote != 0)
		speaker = ~speaker;
end

assign AUDIO_IP = speaker & (tone[6:0] == 0);
assign GAIN_SEL = 1;				//12 dB gain for low, 6 dB gain for high 



//cathodes for AN3, AN2, AN1 and AN0
wire [6:0] cathode3;
wire [6:0] cathode2;
wire [6:0] cathode1;
wire [6:0] cathode0;

segments m10(.digit(min_tens), .cathode(cathode3));
segments m1(.digit(min_ones), .cathode(cathode2));
segments s10(.digit(sec_tens), .cathode(cathode1));
segments s1(.digit(sec_ones), .cathode(cathode0));

reg [1:0] digit_switch;
always @(posedge ssg_clk, posedge RESET) begin
	if (RESET) begin
		digit_switch = 0;
		anode = 4'b1111;
	
	end else if (digit_switch == 0) begin
		anode = 4'b0111;
		cathode = cathode3;
		digit_switch = digit_switch + 1;
	
	end else if (digit_switch == 1) begin
		anode = 4'b1011;
		cathode = cathode2;
		digit_switch = digit_switch + 1;
		
	end else if (digit_switch == 2) begin
		anode = 4'b1101;
		cathode = cathode1;
		digit_switch = digit_switch + 1;
	
	end else if (digit_switch == 3) begin
		anode = 4'b1110;
		cathode = cathode0;
		digit_switch = 0;	
	end
end
	
endmodule





//fullnote -> numerator; quotient -> octave, remainder -> note
module divideby12(input [5:0] numerator,
						output reg [2:0] quotient,
						output [3:0] remainder);
						
//remainder[3] and remainder[2]
reg [1:0] r3r2; 
//remainder[3:2] gets r3r2 and remainder[1:0] gets numerator[1:0]
//division by 4: copying lowest 2 bits of numerator into remainder
assign remainder = {r3r2, numerator[1:0]};

//division by 3: lookup table to get octave (q) and 2 highest bits of remainder (r3r2)
always @(numerator[5:2]) begin
	case (numerator[5:2]) 
		0:  begin quotient = 0; r3r2 = 0; end
		1:  begin quotient = 0; r3r2 = 1; end
		2:  begin quotient = 0; r3r2 = 2; end
		3:  begin quotient = 1; r3r2 = 0; end
		4:  begin quotient = 1; r3r2 = 1; end
		5:  begin quotient = 1; r3r2 = 2; end
		6:  begin quotient = 2; r3r2 = 0; end
		7:  begin quotient = 2; r3r2 = 1; end
		8:  begin quotient = 2; r3r2 = 2; end
		9:  begin quotient = 3; r3r2 = 0; end
		10: begin quotient = 3; r3r2 = 1; end
		11: begin quotient = 3; r3r2 = 2; end
		12: begin quotient = 4; r3r2 = 0; end
		13: begin quotient = 4; r3r2 = 1; end
		14: begin quotient = 4; r3r2 = 2; end
		15: begin quotient = 5; r3r2 = 0; end
	endcase
end

endmodule




