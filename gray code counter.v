module gray_code_counter(
  input clk,
  input rst,
  output reg [2:0] gray
);
  reg [2:0] binary;
  always@(posedge clk or posedge rst) begin
    if(rst)
      binary<=3'b000;
    else
      binary<=binary+1;
  end
  always@(binary) begin
    gray[2]=binary[2];
    gray[1]=binary[2]^binary[1];
    gray[0]=binary[1]^binary[0];
  end
endmodule
