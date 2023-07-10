module b5Mux2x1 (
  input wire [4:0] rt,
  input wire [4:0] rd,
  input wire sel,
  output wire [4:0] saida
);
  assign saida = (sel == 1'b0) ? rt : rd;
endmodule
