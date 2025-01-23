`timescale 1ns/1ps
module MAC_TOP_tb();
    reg clk;
    reg rst;
    reg [3:0] a;
    reg go;
    reg [3:0] b;
    wire [11:0] sum_out;
    wire done;
    wire [11:0] Reg_m;
    wire [3:0]count_out;

    // Instantiate the Design Under Test (DUT)
    MAC_CHIP_TOP MAC_CHIP_inst(
        .clk(clk), 
        .rst(rst), 
        .go(go), 
        .a(a), 
        .b(b), 
        .sum_out(sum_out), 
        .done(done),
        .Reg_m(Reg_m),
        .count_out(count_out)
    );

    integer i;

    // Clock generation
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;  // Clock period: 10 time units
    end

    // Test stimulus
    initial begin
        $dumpfile("MAC_chip_tb.vcd");
        $dumpvars(0, MAC_TOP_tb);

        // Initialize signals
        rst = 1'b1;
        go = 1'b0;
        a = 4'd12;
        b = 4'd6;
        #50;
        rst = 1'b0;
        #50;
        go = 1'b1; #35; go = 0;
        $display("Applying test values:");
        for (i = 0; i < 10; i = i + 1) begin
        /*    a = $random % 16;  
            b = $random % 16;  */
            a= i;
            b= 2*i+1;
            #76;               
        end

        // End simulation
        //#1000;
        $finish;
    end
endmodule
