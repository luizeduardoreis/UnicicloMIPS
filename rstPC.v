module rstPC (
	input [1:0] ExceptionCause,
	output reg rst
);

initial begin 
	rst <= 0;
end

always @ (*) 
	if (ExceptionCause != 0)
		rst <= 0;

endmodule

