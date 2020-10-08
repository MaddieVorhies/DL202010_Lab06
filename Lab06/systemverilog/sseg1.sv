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

    input [15:0] switches,
    output [3:0] out,
    output dp,
    output [6:0] sseg
 );
    
    wire [3:0] num;
    
    mux2_4b mux (
       .in1(switches[7:4]), 
       .in0(switches[3:0]),
       .sel(switches[15]),
       .out(num)
    );
    
    sseg_decoder prototype (
       .num(num),
       .sseg(sseg)
    );
    
    assign out[0] = switches[15];
    assign out[1] = ~switches[15];
    assign dp = 1'b1;
    assign out[3:2] = 2'b11;
    
    
endmodule
