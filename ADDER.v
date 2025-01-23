`timescale 1ns/1ps
module ADDER(
    input [11:0] tout_acc,
    input [11:0] tout_m,
    output [11:0] tout_add
);
assign tout_add = tout_acc + tout_m;
endmodule