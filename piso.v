module piso(in,ld,clk,rst,q);
  input ld,clk,rst;
  input [3:0] in;
  output q;
  reg [3:0]qq;
  assign q=qq[0];
  always @ (posedge clk, posedge rst)
    begin
      if(rst)
         qq<=0; 
      else if(ld)
          qq <=in;
      else
        qq <= {1'b0,qq[3:1]};
    end
endmodule  
