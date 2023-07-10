module testeBancoDeRegistradores(
  input wire clk,
  input wire [31:0] dados,
  input wire [4:0] rs,
  input wire [4:0] rt,
  input wire [4:0] rd,
  input wire WriteEnable,
  output reg [31:0] rsData,
  output reg [31:0] rtData,
  output reg [31:0] register[0:31]
);

  reg [31:0] registers [0:31];
  
  always @(posedge clk) begin
    if (WriteEnable && rd != 5'b00000) begin
      registers[rd] <= dados;
    end
  end

  always @(*) begin
    rsData <= registers[rs];
    rtData <= registers[rt];
    for (integer i = 0; i <= 31; i = i + 1) begin
      register[i] <= registers[i];
    end
  end

  initial begin
    registers[0] <= 0;
  end

endmodule
