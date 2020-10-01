`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 11:47:47 AM
// Design Name: 
// Module Name: mux2_4b_test
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


module mux2_4b_test();

    reg [3:0] in0_t;
    reg [3:0] in1_t;
    reg sel_t;
    wire [3:0] out_t;
    
    mux2_4b dut (
       .in0(in0_t),
       .in1(in1_t),
       .sel(sel_t), 
       .out(out_t)
    );
    
    initial begin 
    
       in0_t = 4'b0000; in1_t = 4'b0001; sel_t = 0; #10;
       in0_t = 4'b0000; in1_t = 4'b0001; sel_t = 1; #10;
       in0_t = 4'b0011; in1_t = 4'b0000; sel_t = 0; #10;
       in0_t = 4'b0011; in1_t = 4'b0000; sel_t = 1; #10;
       
       $finish;
       
    end

endmodule
