module alu(a_i,b_i,op_i,res_o);
    input wire [7:0] a_i;
    input wire [7:0] b_i;
    input wire [2:0] op_i;
    output reg [7:0] res_o;

    always @(*)
        begin
            if (op_i == 3'b000) begin
                res_o  = a_i + b_i;
            end
            else if (op_i == 3'b001) begin
                res_o = a_i - b_i;
            end
            else if (op_i == 3'b010) begin
                res_o = a_i & b_i;
            end
            else if (op_i == 3'b011) begin
                res_o = a_i | b_i;
            end
            else if (op_i == 3'b100) begin
                res_o = a_i ^ b_i;
            end
            else if (op_i == 3'b101) begin
                res_o = a_i << b_i;
            end
            else if (op_i == 3'b110) begin
                res_o = a_i >> b_i;
            end
            else begin
                res_o = 8'b00000010;
            end
        end

endmodule