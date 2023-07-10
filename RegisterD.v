module RegisterD(
  input wire clk,
  input wire [15:0] in,
  output reg [15:0] out
);

always @(posedge clk) begin
		out <= in;
end

initial begin
	out = 16'b0;
end

endmodule
