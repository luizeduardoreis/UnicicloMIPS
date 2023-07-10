module RegisterD32(
  input wire clk,
  input wire writeEnable,
  input wire [31:0] in,
  output reg [31:0] out
);

always @(posedge clk) begin
if (writeEnable)
  out <= in;
end

initial begin
	out <= 32'b0;
end

endmodule
