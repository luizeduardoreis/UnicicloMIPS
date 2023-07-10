module ALUverilog (
  input [3:0] ALUctl,
  input [31:0] A,
  input [31:0] B,
  input [4:0] ShiftAmount,
  output reg [31:0] ALUOut,
  output Zero,
  output reg overflow
);
initial begin
	overflow <= 0;
end

assign Zero = (ALUOut == 0);
always @ (ALUctl, A, B)
  case (ALUctl)
    0: ALUOut <= A & B; // and
    1: ALUOut <= A | B;	// or
    2: begin				// soma (com detecção de overflow)
      ALUOut <= A + B;
      overflow <= (A[31] && B[31] && ~ALUOut[31]) || (~A[31] && ~B[31] && ALUOut[31]);
    end
    3: begin				// subtração (com detecção de overflow)
      ALUOut <= A - B;
      overflow <= (A[31] && ~B[31] && ~ALUOut[31]) || (~A[31] && B[31] && ALUOut[31]);
    end
    4: ALUOut <= B << ShiftAmount;  // sll
    5: ALUOut <= B >> ShiftAmount;	// srl
    6: ALUOut <= A ^ B;					// xor
    7: ALUOut <= ($signed(A) < $signed(B)) ? 1 : 0;	// slt
    8: ALUOut <= ~(A | B);				// nor
	 9: ALUOut <= B << 16;				// lui
	 10: begin     						// addu (sem overflow)
		ALUOut <= A + B;
		overflow <= 0;
		end
	 11: begin								// subu (sem overflow)
		ALUOut <= A - B;   			
		overflow <= 0;
		end			
	 default: ALUOut <= A + B;			// caso contrário, apenas soma
	endcase
  

  
endmodule
