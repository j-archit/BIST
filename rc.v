/* 
    Result Compressor Module 
*/
module rc
#(parameter OUTPUT_BITS = 4, INPUT_BITS = 4)
(
    input clk,
    input [INPUT_BITS-1:0] ip,
    output reg [OUTPUT_BITS-1:0] op
);

always @(posedge(clk)) begin
    op <= ip;
end
    
endmodule