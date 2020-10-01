`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 01:14:52 PM
// Design Name: 
// Module Name: sseg1
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


module sseg1(

    input [3:0] A,
    input [3:0] B,
    input sel,
    output [1:0] seg_un,
    output dp,
    output [6:0] sseg,
    output seg_l,
    output seg_r
 );
    
    wire [3:0] num;
    
    mux2_4b mux (
       .in1(A), 
       .in0(B),
       .sel(sel),
       .out(num)
    );
    
    sseg_decoder prototype (
       .num(num),
       .sseg(sseg)
    );
    
    assign sseg_r = sel;
    assign sseg_l = ~sel;
    assign dp = 1;
    assign seg_un = 2'b11;
    
    
endmodule
