`timescale 100fs/100fs

module RegisterFile(A1,A2,A3,WD3,RD1,RD2,WE3,JR,PC2,JW,JA,PCF);
input [4:0] A1,A2,A3,JA;
input WE3,JW,JR;
input [31:0] WD3,PCF;
output reg signed[31:0] RD1,RD2;
output reg[31:0] PC2;

reg signed[31:0] Reg [31:0];

initial begin
  RD1 = 0;
  RD2 = 0;
  Reg[0] = 0;
  Reg[1] = 0;
  Reg[2] = 0;
  Reg[3] = 0;
  Reg[4] = 0;
  Reg[5] = 0;
  Reg[6] = 0;
  Reg[7] = 0;
  Reg[8] = 0;
  Reg[9] = 0;
  Reg[10] = 0;
  Reg[11] = 0;
  Reg[12] = 0;
  Reg[13] = 0;
  Reg[14] = 0;
  Reg[15] = 0;
  Reg[16] = 0;
  Reg[17] = 0;
  Reg[18] = 0;
  Reg[19] = 0;
  Reg[20] = 0;
  Reg[21] = 0;
  Reg[22] = 0;
  Reg[23] = 0;
  Reg[24] = 0;
  Reg[25] = 0;
  Reg[26] = 0;
  Reg[27] = 0;
  Reg[28] = 0;
  Reg[29] = 0;
  Reg[30] = 0;
  Reg[31] = 0;
  PC2 = 0;
end

always @(*) begin
#10
  RD1 = Reg[A1];
  RD2 = Reg[A2];
end

always @(*) begin 
#10;
  if (WE3 == 1)
    Reg[A3] = WD3;
end

always @(*) begin
#10
  if (JR == 1) begin
    if (JA == 5'b11111) begin
      PC2 = Reg[JA];
    end
    else begin
      PC2 = (Reg[JA]>>2);
    end
  end    
  if (JW == 1)
    Reg[JA] = (PCF+1);
end


endmodule