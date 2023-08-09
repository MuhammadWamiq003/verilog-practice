`timescale 1ns/1ps
module rsrf_tb();
    reg d1_tb=0;
    reg r_tb=0;
    reg c_tb=0;
    wire q4_tb;

always begin
        #5 c_tb = ~c_tb;
    end

    initial begin
      /*  r_tb=1;
        d1_tb=0;
        #40;c */
        #10 d1_tb = 1;
        #10 d1_tb = 0;
        #10 d1_tb = 0;
        #10 d1_tb = 0;
        

        

        #10 $finish;
    end

    rsrf u_rsrf0
    (
        .d1(d1_tb),
        .r(r_tb),
        .c(c_tb),
        .q4(q4_tb)
    );

    initial begin
        $dumpfile ("rsrf.vcd");
        $dumpvars (0,rsrf_tb);
    end

endmodule