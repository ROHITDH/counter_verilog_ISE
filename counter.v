`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:11 09/03/2020 
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

// ROHIT D H
// 4CB18EC055
// Canara Engineering College
// Assignment -- clock pulse usage

module counter(
    input clk,
    input rst,
    output reg[3:0]count
    );

reg[2:0]clk_div;

wire div;

always @(posedge clk)
begin
	clk_div <= clk_div + 1;
end

assign div = clk_div[2];

always @(posedge div)
begin
	count <= count + 1;
end

endmodule
