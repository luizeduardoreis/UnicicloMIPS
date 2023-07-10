module writeEnableMult (
	input wire [5:0] Funct,
	output reg writeEnable,
	output reg showDiv
);

initial begin
	writeEnable <= 0;
	showDiv <= 0;
	end

always @ (Funct)
	if (Funct == 6'b011000)begin
		writeEnable <= 1;
		showDiv <= 0;
		end
	else if (Funct == 6'b011010)begin
		writeEnable <= 1;
		showDiv <= 1;
		end
	else
		writeEnable <= 0;


endmodule
