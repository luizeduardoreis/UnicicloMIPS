module Mux32x1 (
  input [4:0] sel,  
  input [31:0] inZero, inUm, inDois, inTres, inQuatro, inCinco, inSeis, inSete,
               inOito, inNove, inDez, inOnze, inDoze, inTreze, inQuatorze, inQuinze,
               inDezesseis, inDezessete, inDezoito, inDezenove, inVinte, inVinteUm, inVinteDois, inVinteTres,
               inVinteQuatro, inVinteCinco, inVinteSeis, inVinteSete, inVinteOito, inVinteNove, inTrinta, inTrintaUm,
  output reg [31:0] out 
);

always @(*) begin
  case (sel)
    5'b00000: out = 0;
    5'b00001: out = inUm;
    5'b00010: out = inDois;
    5'b00011: out = inTres;
    5'b00100: out = inQuatro;
    5'b00101: out = inCinco;
    5'b00110: out = inSeis;
    5'b00111: out = inSete;
    5'b01000: out = inOito;
    5'b01001: out = inNove;
    5'b01010: out = inDez;
    5'b01011: out = inOnze;
    5'b01100: out = inDoze;
    5'b01101: out = inTreze;
    5'b01110: out = inQuatorze;
    5'b01111: out = inQuinze;
    5'b10000: out = inDezesseis;
    5'b10001: out = inDezessete;
    5'b10010: out = inDezoito;
    5'b10011: out = inDezenove;
    5'b10100: out = inVinte;
    5'b10101: out = inVinteUm;
    5'b10110: out = inVinteDois;
    5'b10111: out = inVinteTres;
    5'b11000: out = inVinteQuatro;
    5'b11001: out = inVinteCinco;
    5'b11010: out = inVinteSeis;
    5'b11011: out = inVinteSete;
    5'b11100: out = inVinteOito;
    5'b11101: out = inVinteNove;
    5'b11110: out = inTrinta;
    5'b11111: out = inTrintaUm;
    default: out = 32'b0;
  endcase
end

endmodule
