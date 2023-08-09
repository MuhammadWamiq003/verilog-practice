`include "rsr.v"
module rsrf (d1,r,c,q4);
    input wire d1;
    wire d2;
    wire d3;
    wire d4;
    input wire r;
    input wire c;
    output wire q4;
   // reg q1;
   // reg q2;
   // reg q3;
     
    rsr u_ff1
    (
        .D(d1),
        .R(r),
        .C(c),
        .Q(d2)
    );

    rsr u_ff2
    (
        .D(d2),
        .R(r),
        .C(c),
        .Q(d3)
    );

    rsr u_ff3
    (
        .D(d3),
        .R(r),
        .C(c),
        .Q(d4)
    );

    rsr u_ff4
    (
        .D(d4),
        .R(r),
        .C(c),
        .Q(q4)
    );

endmodule