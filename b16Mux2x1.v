module b16Mux2x1 (
  input wire [15:0] Branch,
  input wire [15:0] Pc,
  input wire sel,
  output wire [15:0] Endereco
);
  assign Endereco = (sel == 1'b0) ? Pc : Branch;
endmodule
