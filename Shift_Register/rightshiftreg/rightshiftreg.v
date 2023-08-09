module rightshiftreg (clk,rst,in,a);

//input wire [3:0] in;
input wire clk;
input wire rst;
input wire in;

output reg  [3:0] a;

always @(posedge clk) begin
    if(rst)

    a=4'b0000;

    else begin

    a ={in,a[3:1]};


    end
    
end
    
 endmodule