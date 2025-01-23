`timescale 1ns/1ps
module Reg_b(
    input clk, 
    input rst,
    input [3:0]b,
    input ld_b,
    output [3:0] tout_b
);
reg [3:0] temp_b;
always@(posedge clk or posedge rst)
begin
    if (rst)
        temp_b <= 0;
    else 
        if(ld_b)
        temp_b <= b;

end
assign tout_b = temp_b;
endmodule