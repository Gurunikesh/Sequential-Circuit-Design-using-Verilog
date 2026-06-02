`timescale 1ns/1ps

module d_ff_tb;

reg D,clk;
wire Q;

d_ff uut(
.D(D),
.clk(clk),
.Q(Q)
);

always #5 clk=~clk;

initial begin

$dumpfile("d_ff.vcd");
$dumpvars(0,d_ff_tb);

clk=0;

D=0;#10;
D=1;#10;
D=0;#10;
D=1;#10;

$finish;

end

endmodule