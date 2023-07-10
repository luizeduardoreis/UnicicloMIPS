module b32Mux2x1 (
  input wire [31:0] rt,
  input wire [31:0] immediate,
  input wire sel,
  output wire [31:0] saida
);
  assign saida = (sel == 1'b0) ? rt : immediate;
endmodule
