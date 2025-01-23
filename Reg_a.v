`timescale 1ns/1ps
module Reg_a(
    input clk, 
    input rst,
    input [3:0]a,
    input ld_a,
    output [3:0] tout_a
);
reg [3:0] temp_a;
always@(posedge clk or posedge rst)
begin
    if (rst)
        temp_a <= 0;
    else 
        if(ld_a)
        temp_a <= a;
    
end
assign tout_a = temp_a;
endmodule