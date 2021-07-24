module univshift(in,cnt,clk,rst,q);
  input clk,rst;
  input [3:0]in;
  input [1:0]cnt;
  output reg [3:0]q;
  
  always @(posedge clk,posedge rst)
    begin
      if(rst)
        q<=0;
      else
        begin
          case(cnt)
            2'b00: q<=q;
              
            2'b01: q<={1'b0,q[3:1]};
              
            2'b10: q<={q[2:0],1'b0};
              
            2'b11: q<= in;
              
              default: q<=0;
          endcase
        end
    end
endmodule
