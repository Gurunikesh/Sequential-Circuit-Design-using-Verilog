`timescale 1ns/1ps

module jk_ff_tb;

reg J,K,clk;
wire Q;

jk_ff uut(
.J(J),
.K(K),
.clk(clk),
.Q(Q)
);

always #5 clk=~clk;

initial begin

$dumpfile("jk_ff.vcd");
$dumpvars(0,jk_ff_tb);

clk=0;

J=0;K=0;#10;
J=1;K=0;#10;
J=0;K=1;#10;
J=1;K=1;#20;

$finish;

end

endmodule