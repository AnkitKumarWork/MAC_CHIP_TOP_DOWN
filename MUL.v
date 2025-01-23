`timescale 1ns/1ps
module MUL(
    input [3:0]tout_a,
    input [3:0]tout_b,
    output [11:0] tmin
);
assign tmin = tout_a*tout_b;
endmodule

