`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 00:21:19
// Design Name: 
// Module Name: test_QPP
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


module test_QPP;

    reg [15:0] gamma_x0;
    reg [15:0] N;
    reg [15:0] g;
    reg clk;
    reg int;
    reg [15:0] pi_x0; 
    wire [15:0]pi_x1;
    wire [15:0]gamma_x1;
    
QPP dut(gamma_x0,N,g,clk,int,pi_x0,pi_x1,gamma_x1);
 begin
always #5 clk=~clk;
end
initial begin
clk=1;
#5 int=0;
#5 int=1;

end

//initial begin
//gamma_x0=6'b100001;
//N=6'b101000;
//g=5'b10100;
//pi_x0=1'b0;
//end


initial begin
gamma_x0=10'b1011100111;
N=13'b1100000000000;
g=10'b1111000000;
pi_x0=1'b0;
end



endmodule
