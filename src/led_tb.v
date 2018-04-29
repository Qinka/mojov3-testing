`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:13:04 04/29/2018
// Design Name:   led
// Module Name:   A:/mojov3-testing/src/led_tb.v
// Project Name:  Mojo-Base
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: led
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module led_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [7:0] leds;

	// Instantiate the Unit Under Test (UUT)
	led uut (
		.clk(clk), 
		.leds(leds)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever begin
			#100
			clk = ~ clk;
		end

	end
      
endmodule

