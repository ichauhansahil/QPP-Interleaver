module ACC(
   
    input [15:0] gamma_x0,
    input [15:0] N,
    input [15:0] g,
    input clk,
    input int,
    input [15:0] h,
    output reg [15:0]gamma_x1);
    
  
wire [15:0]y1,y2,y3,y4;


assign y1=int? h :gamma_x0,
       y2=g+y1,
       y3=y2-N, 
       y4=y3[15]?y2:y3;

always @ (posedge clk)
    begin
    gamma_x1 <= y4;
    end
    
endmodule