`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:38 04/29/2018 
// Design Name: 
// Module Name:    led 
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
module led(
    input clk,
    output [7:0] leds
    );
	 
	 reg [19:0] counter = 20'b0;
	 reg [2:0]  index = 3'b0;
	 reg [7:0] led_r = 8'b1;
	 assign leds = led_r;
	 
	 always @(posedge clk) begin
		counter = counter + 1;
	 end
	 
	 always @(posedge counter[19]) begin
		led_r = 8'b1 << index;
		index = index + 1;
	 end

endmodule
