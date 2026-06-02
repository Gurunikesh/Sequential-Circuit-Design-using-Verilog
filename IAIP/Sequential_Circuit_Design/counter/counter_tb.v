`timescale 1ns/1ps

module counter_tb;

reg clk;
wire [3:0] count;

counter uut(
.clk(clk),
.count(count)
);

always #5 clk=~clk;

initial begin

$dumpfile("counter.vcd");
$dumpvars(0,counter_tb);

clk=0;

#100;

$finish;

end

endmodule