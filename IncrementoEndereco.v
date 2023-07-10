module IncrementoEndereco(
  input wire [15:0] endereco,
  output reg [15:0] novoEndereco
);

  always @(*) begin
    novoEndereco = endereco + 1;
  end

endmodule
