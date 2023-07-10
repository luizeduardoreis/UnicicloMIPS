module SomadorBranch(
  input [15:0] Offset,
  input [15:0] Endereco,
  output [15:0] Branch
);

  assign Branch = Offset + Endereco;

endmodule
