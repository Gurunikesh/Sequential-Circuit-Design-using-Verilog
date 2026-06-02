`timescale 1ns/1ps

module shift_register_tb;

reg clk;
reg serial_in;

wire [3:0] Q;

shift_register uut(
    .clk(clk),
    .serial_in(serial_in),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("shift_register.vcd");
    $dumpvars(0, shift_register_tb);

    clk = 0;

    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;

    $finish;

end

endmodule