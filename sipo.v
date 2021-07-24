module sipo(clk,in,rst,q);
  input clk,rst;
  input in;
  output reg [3:0]q;
 
  always @ (posedge clk, posedge rst)
    begin
      if(rst)
        q <= 0;
        else 
        q <= {in,q[3:1]};
    end 
endmodule
