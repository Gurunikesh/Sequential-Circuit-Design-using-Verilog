module traffic_fsm(
    input clk,
    output reg [1:0] state
);

parameter RED=2'b00;
parameter YELLOW=2'b01;
parameter GREEN=2'b10;

always @(posedge clk)
begin

case(state)

RED:
state <= GREEN;

GREEN:
state <= YELLOW;

YELLOW:
state <= RED;

default:
state <= RED;

endcase

end

endmodule