`timescale 1ns/1ps
module counter_tb ();
    reg res_tb;
    reg clk;
    wire [3:0] out_tb;
    
    always  #5 clk = ~clk;

    initial begin
        clk = 1;
        res_tb = 1;
        #10;
        res_tb = 1;
        #10;

        res_tb = 0;
        #150;

       $finish;

    end

    counter u_count
    (
        .res(res_tb),
        .clk(clk),
        .out(out_tb)
    );

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0,counter_tb);
    end

endmodule