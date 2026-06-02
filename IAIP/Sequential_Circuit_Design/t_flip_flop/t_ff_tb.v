`timescale 1ns/1ps

module t_ff_tb;

reg T,clk;
wire Q;

t_ff uut(
.T(T),
.clk(clk),
.Q(Q)
);

always #5 clk=~clk;

initial begin

$dumpfile("t_ff.vcd");
$dumpvars(0,t_ff_tb);

clk=0;

T=1;#40;

$finish;

end

endmodule