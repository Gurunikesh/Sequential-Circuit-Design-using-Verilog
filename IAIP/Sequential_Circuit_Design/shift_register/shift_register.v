module shift_register(
    input clk,
    input serial_in,
    output reg [3:0] Q
);

initial begin
    Q = 4'b0000;
end

always @(posedge clk)
begin
    Q <= {Q[2:0], serial_in};
end

endmodule