`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Maddie Vorhies
// 
// Create Date: 10/01/2020 12:45:12 PM
// Design Name: 
// Module Name: sseg_decoder_test
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


module sseg_decoder_test();

    reg [3:0] num_t;
    wire [6:0] sseg_t;
    integer i;
    
    sseg_decoder dut(
       .num(num_t),
       .sseg(sseg_t)
    );
    
    initial begin
       for(i = 0; i <= 4'hF; i = i+1) begin 
          num_t = i;
          #10;
       end
       $finish;
    end
       


endmodule
