module QPP(

 
    input [15:0] gamma_x0,
    input [15:0] N,
    input [15:0] g,
    input clk,
    input int,
    input [15:0]pi_x0,
    output [15:0]pi_x1,
    output [15:0]gamma_x1);
    
wire [15:0]g2; 
 
assign g2=int?pi_x1:pi_x0;

ACC uut1(.gamma_x0(gamma_x0),.N(N),.g(g),.clk(clk),.int(int),.h(gamma_x1),.gamma_x1(gamma_x1));

ACC uut2(.gamma_x0(gamma_x0),.N(N),.g(g2),.clk(clk),.int(int),.h(gamma_x1),.gamma_x1(pi_x1));

endmodule    