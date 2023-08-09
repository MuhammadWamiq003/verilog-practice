module leftshiftreg_tb;

    //reg [3:0] in_data;
    reg clk;
    reg rst;
    reg in;
    wire [3:0] a_tb;

    always #5 clk = ~clk;

    initial begin
       clk = 1;
        in = 1;
        rst = 1;
        #10;

        rst = 0;
        in =1 ;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;
        in = 0;
        #10;

        $finish;
    end

    leftshiftreg u_shiftut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .a(a_tb)
    );

    initial begin
        $dumpfile("leftshiftreg.vcd");
        $dumpvars(0, leftshiftreg_tb);
    end
endmodule