module Controle (
	input wire [5:0] opcode, 
	output reg RegDest, 
	output reg ALUsrc, 
	output reg MemParaReg, 
	output reg EscreveReg, 
	output reg Jump, 
	output reg EscreveMem, 
	output reg Branch, 
	output reg [3:0] OpALU,
	output reg Link
);

always @ (opcode)
	case (opcode)
		// tipo r
		6'b000000: begin
			RegDest <= 1;
			ALUsrc <= 0;
			MemParaReg <= 0;
			EscreveReg	<= 1;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 0;
			Link <= 0;
			end
		// addi
		6'b001000: begin
			RegDest <= 0;
			ALUsrc <= 1;
			MemParaReg <= 0;
			EscreveReg	<= 1;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 1;
			Link <= 0;
			end
		// lui
		6'b001111: begin
			RegDest <= 0;
			ALUsrc <= 1;
			MemParaReg <= 0;
			EscreveReg	<= 1;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 2;
			Link <= 0;
			end
		// ori
		6'b001101: begin
			RegDest <= 0;
			ALUsrc <= 1;
			MemParaReg <= 0;
			EscreveReg	<= 1;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 3;
			Link <= 0;
			end
		// andi
		6'b001100: begin
			RegDest <= 0;
			ALUsrc <= 1;
			MemParaReg <= 0;
			EscreveReg	<= 1;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 4;
			Link <= 0;
			end
		// xori
		6'b001110: begin
			RegDest <= 0;
			ALUsrc <= 1;
			MemParaReg <= 0;
			EscreveReg	<= 1;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 5;
			Link <= 0;
			end
		// lw
		6'b100011: begin
			RegDest <= 0;
			ALUsrc <= 1;
			MemParaReg <= 1;
			EscreveReg	<= 1;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 1;
			Link <= 0;
			end
		// sw
		6'b101011: begin
			RegDest <= 0;
			ALUsrc <= 1;
			MemParaReg <= 0;
			EscreveReg	<= 0;
			Jump <= 0;
			EscreveMem <= 1;
			Branch <= 0;
			OpALU <= 1;
			Link <= 0;
			end
		// beq
		6'b000100: begin
			RegDest <= 0;
			ALUsrc <= 0;
			MemParaReg <= 0;
			EscreveReg	<= 0;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 1;
			OpALU <= 6;
			Link <= 0;
			end
		// bne
		6'b000101: begin
			RegDest <= 1;
			ALUsrc <= 0;
			MemParaReg <= 0;
			EscreveReg	<= 0;
			Jump <= 0;
			EscreveMem <= 0;
			Branch <= 1;
			OpALU <= 6;
			Link <= 0;
			end
		// jump
		6'b000010: begin
			RegDest <= 0;
			ALUsrc <= 0;
			MemParaReg <= 0;
			EscreveReg	<= 0;
			Jump <= 1;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 6;
			Link <= 0;
			end
		// jal
		6'b000011: begin
			RegDest <= 1;
			ALUsrc <= 0;
			MemParaReg <= 0;
			EscreveReg	<= 1;
			Jump <= 1;
			EscreveMem <= 0;
			Branch <= 0;
			OpALU <= 6;
			Link <= 1;
			end
		endcase
endmodule
