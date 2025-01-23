`timescale 1ns/1ps
module DATAPATH(
    input clk, rst,
    input [3:0] a, b,
    input ld_a, ld_b, ld_m, ld_acc, ld_out ,count_enb,count_reset,
    output CMP,
    output [11:0] sum_out,
    output [11:0] Reg_m,
    output [3:0] count_out
    
    
);
wire [3:0] tout_a, tout_b;
wire [11:0] tmin,  tout_m, tout_add, tout_acc;
wire [3:0] count_out; 
assign Reg_m = tout_m;
Reg_a Ra (clk, rst , a, ld_a, tout_a);
Reg_b Rb (clk, rst , b, ld_b, tout_b);
MUL Bmul (tout_a, tout_b, tmin);
Reg_m Rm(clk, rst , tmin, ld_m, tout_m);
ADDER Badd (tout_acc, tout_m, tout_add);
Reg_acc Racc(clk, rst , tout_add, ld_acc,tout_acc);
Reg_out Ro (clk, rst , tout_acc, ld_out, sum_out);
COUNTER Bco (clk,rst,count_enb,count_out, count_reset);
COMPARATOR Bcom (count_out,CMP);

endmodule