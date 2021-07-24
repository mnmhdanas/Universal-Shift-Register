module pipo(in,clk,rst,q);
  input clk,rst;
  input [3:0] in;
  output reg [3:0]q;
  
  always @(posedge clk,posedge rst)
    begin
      if(rst)
        q<=0;
      else 
        q<=in;
    end
endmodule
