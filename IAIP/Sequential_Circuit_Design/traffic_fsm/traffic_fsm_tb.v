`timescale 1ns/1ps

module traffic_fsm_tb;

reg clk;

wire [1:0] state;

traffic_fsm uut(
.clk(clk),
.state(state)
);

always #5 clk=~clk;

initial begin

$dumpfile("traffic_fsm.vcd");
$dumpvars(0,traffic_fsm_tb);

clk=0;

#100;

$finish;

end

endmodule