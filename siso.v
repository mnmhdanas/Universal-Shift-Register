module siso(clk,in,rst,q);
  input clk,rst;
  input in;
  output q;
  reg [3:0]qq;
  assign q=qq[0];
  always @ (posedge clk, posedge rst)
    begin
      if(rst)
        qq <=0; 
      else 
        qq <= {in,qq[3:1]};
    end
endmodule
