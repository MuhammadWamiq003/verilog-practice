`timescale 1ns/1ps
module alu_tb ();
    reg [7:0] a_itb;
    reg [7:0] b_itb;
    reg [2:0] op_itb;
    wire [7:0] res_otb;

    integer i;

    initial begin
        a_itb = 10;
        b_itb = 3;

        /*op_itb = 000;
        $display ("Addition is %b",res_otb);
        #1;*/

    for (i=0; i<8; i++) begin 
        op_itb=i;
        #1;
        $display("res_itb value is %d",res_otb);
        #1;
    end

    
    end

    alu u_alu0 (
        .a_i(a_itb),
        .b_i(b_itb),
        .op_i(op_itb),
        .res_o(res_otb)
    );

    initial begin
        $dumpfile ("alu.vcd");
        $dumpvars (0, alu_tb);
    end
    
endmodule