`timescale 1ns/1ps
module Reg_m(
    input clk, 
    input rst,
    input [11:0]tmin,
    input ld_m,
    output [11:0] tout_m
);
reg [11:0] temp_m;
always@(posedge clk or posedge rst)
begin
    if (rst)
        temp_m <= 0;
    else 
        if(ld_m)
        temp_m <= tmin;
    
end
assign tout_m = temp_m;
endmodule