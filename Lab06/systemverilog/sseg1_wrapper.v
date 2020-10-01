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
    
       .A(sw[7:4]),
       .B(sw[3:0]),
       .sel(sw[15]),
       .seg_un(an[3:2]),
       .dp(dp),
       .sseg(seg),
       .seg_l(an[1]),
       .seg_r(an[0])
    );
    
    
endmodule
