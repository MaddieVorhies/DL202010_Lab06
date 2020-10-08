`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2020 08:53:21 PM
// Design Name: 
// Module Name: sseg1_test
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


module sseg1_test();

    reg [15:0] switches;
    wire [3:0] out;
    wire dp;
    wire [6:0] sseg;
    integer i; 
    
    sseg1 dut (
       .switches(switches),
       .out(out),
       .sseg(sseg), 
       .dp(dp)
    );
    
    initial begin 
       switches = 16'h0000; #10;
       
       for(i = 16'h0000; i < 16'hffff; i = i + 1) begin
          switches[7:0] = i;
          switches[15] = 1'b0; #10;
          switches[15] = 1'b1; #10;
       end
       
       $finish;
    end
          
    
endmodule
