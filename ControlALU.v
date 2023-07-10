module ControlALU (
  input [3:0] OPAlu,
  input [5:0] Funct,
  output reg [3:0] OperationALU,
  output wire Jump
);

assign Jump =(Funct == 6'b001000 && OPAlu == 0) ? 1 : 0;
always @ (OPAlu, Funct, OperationALU)
begin
  if (OPAlu == 0) begin
      case (Funct)
        6'b100000: begin
			OperationALU <= 2;
			end
        6'b100010: begin
			OperationALU <= 3;
			end
        6'b100100: begin
			OperationALU <= 0;
			end
        6'b100101: begin
			OperationALU <= 1;
			end
        6'b100111: begin
			OperationALU <= 8;
			end
        6'b100110: begin 
			OperationALU <= 6;
			end
		  6'b000010: begin
			OperationALU <= 5;
			end
		  6'b000000: begin
			OperationALU <= 4;
			end
		  6'b100001: begin
			OperationALU <= 10;
			end
		  6'b100011: begin
			OperationALU <= 11;
			end
		  6'b101010: begin
			OperationALU <= 7;
			end
        default: OperationALU <= 0;
      endcase
    end
if (OPAlu == 1)
	OperationALU <= 2;
if (OPAlu == 2)
	OperationALU <= 9;
if (OPAlu == 3)
	OperationALU <= 1;
if (OPAlu == 4)
	OperationALU <= 0;
if (OPAlu == 5)
	OperationALU <= 6;
if (OPAlu == 6)
	OperationALU <= 3;
	end
endmodule

		
