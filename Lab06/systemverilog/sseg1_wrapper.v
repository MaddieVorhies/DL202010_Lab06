`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 01:14:52 PM
// Design Name: 
// Module Name: sseg1_wrapper
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


module sseg1_wrapper(
    input [15:0] sw,
    input clk,
    output [3:0] an,
    output dp,
    output [6:0] seg
    );
    
    sseg1 my_7seg1 (
       .switches(sw),
       .out(an),
       .dp(dp),
       .sseg(seg)
    );
    
    
endmodule
