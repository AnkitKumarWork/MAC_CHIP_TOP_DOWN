`timescale 1ns/1ps
module Reg_acc(
    input clk, 
    input rst,
    input [11:0] tout_acc,
    input ld_out,
    output reg [11:0] sum_out // Declare sum_out as reg
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        sum_out <= 12'd0; // Reset sum_out to 0
    end else if (ld_out) begin
        sum_out <= tout_acc; // Load new value into sum_out
    end
end

endmodule
