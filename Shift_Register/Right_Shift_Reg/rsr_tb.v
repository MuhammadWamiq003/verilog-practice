`timescale 1ns/1ps
module rsr_tb();
    reg d_tb=0;
    reg r_tb=0;
    reg c=0;
    wire q_tb;
    always begin
        c = ~c;
        #10;
    end
    initial begin
        r_tb=1;
        d_tb=0;
        #40;
        r_tb=0;
        d_tb=1;
        #40;
        d_tb=0;
        #40;

        $finish;
    end
    rsr u_rsr0 (
        .D(d_tb),
        .R(r_tb),
        .C(c),
        .Q(q_tb)
    );
    initial begin
        $dumpfile("rsr.vcd");
        $dumpvars(0,rsr_tb);
    end

endmodule