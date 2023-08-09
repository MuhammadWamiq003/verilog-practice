module rsr (D,R,C,Q);
    input wire D;
    input wire R;
    input wire C;
    output reg Q;

    always @(posedge C) begin
        if (R)
        begin
            Q = 1'b 0;
        end 
        else begin
            Q = D;
        end
    end
endmodule