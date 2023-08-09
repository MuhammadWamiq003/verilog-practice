module rightshiftreg_tb;

   // reg [3:0] in_data;
    reg clk;
    reg rst;
    reg in;
    wire [3:0] a_tb;

    always #5 clk = ~clk;

    initial begin
        clk = 0;
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

    rightshiftreg u_shiftut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .a(a_tb)
    );

    initial begin
        $dumpfile("rightshiftreg.vcd");
        $dumpvars(0, rightshiftreg_tb);
    end
endmodule