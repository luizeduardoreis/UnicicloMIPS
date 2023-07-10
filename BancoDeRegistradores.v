module BancoDeRegistradores(
  input wire clk,
  input wire [31:0] dados,
  input wire [4:0] rs,
  input wire [4:0] rt,
  input wire [4:0] rd,
  input wire WriteEnable,
  output reg [31:0] rsData,
  output reg [31:0] rtData,
  output reg [31:0] dolarZero,
  output reg [31:0] dolarUm,
  output reg [31:0] dolarDois,
  output reg [31:0] dolarTres,
  output reg [31:0] dolarQuatro,
  output reg [31:0] dolarCinco,
  output reg [31:0] dolarSeis,
  output reg [31:0] dolarSete
);

reg [31:0] registers [0:31];
  
integer i;
initial begin
  for (i = 0; i <= 31; i = i + 1) begin
    registers[i] <= 0;
  end
end
  
always @(posedge clk) begin
  if (WriteEnable && rd != 5'b00000) begin
    registers[rd] <= dados;
  end
end

always @(*) begin
  rsData <= registers[rs];
  rtData <= registers[rt];
  dolarZero <= registers[0];
  dolarUm <= registers[1];
  dolarDois <= registers[2];
  dolarTres <= registers[3];
  dolarQuatro <= registers[4];
  dolarCinco <= registers[5];
  dolarSeis <= registers[6];
  dolarSete <= registers[7];
end

  initial begin
    registers[0] <= 0;
  end

endmodule

