`timescale 1ps/1ps
module MAC_CHIP_TOP (clk, rst ,go, a, b, sum_out, done, Reg_m, count_out);
input clk, rst, go;
input [3:0] a, b;
output [11:0]sum_out;
output done;
output [11:0] Reg_m;
output [3:0] count_out;
wire CMP, count_reset;//inputs from datapath to controller
wire ld_a,ld_b, ld_m, ld_acc, ld_out, count_enb;//output from controller to datapath 

DATAPATH datapath_inst1(.clk(clk), .rst(rst), .a(a), .b(b), .ld_a(ld_a), .ld_b(ld_b), .ld_m(ld_m), .ld_acc(ld_acc), .ld_out(ld_out), .count_enb(count_enb), .CMP(CMP),.sum_out(sum_out), .Reg_m(Reg_m), .count_out(count_out), .count_reset(count_reset));
CONTROLLER controller_inst1(.clk(clk),.rst(rst), .CMP(CMP), .go(go), .ld_a(ld_a), .ld_b(ld_b), .ld_m(ld_m), .ld_acc(ld_acc),.ld_out(ld_out), .count_enb(count_enb), .done(done), .count_reset(count_reset));
endmodule