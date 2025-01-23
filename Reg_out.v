`timescale 1ns/1ps
module Reg_out(
    input clk, 
    input rst,
    input [11:0] tout_acc,
    input ld_out,
    output [11:0] sum_out
);

reg [11:0] temp_out;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        temp_out <= 12'd0; // Reset temp_out to 0
    end else if (ld_out) begin
        temp_out <= tout_acc; // Load new value when ld_out is asserted
    end
end

// Continuous assignment for sum_out
assign sum_out = temp_out;
endmodule
