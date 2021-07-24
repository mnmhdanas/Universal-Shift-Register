// Code your testbench here
// or browse Examples

module pipotb();
  reg clk,rst;
  reg [3:0] in;
  wire [3:0] q;
  pipo dut(in,clk,rst,q);
  
  initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      $dumpfile("pipotb.vcd");
      $dumpvars(0,pipotb);
      #100 $finish;
    end
  
  initial 
    begin
      rst =1;
      #10 rst = 0; in=4'b0000;
      #10 rst = 0; in=4'b0010;
      #10 rst = 0; in=4'b0100;
      #10 rst = 0; in=4'b0110;
      #10 rst = 0; in=4'b1000;
      #10 rst = 0; in=4'b1010;
      #10 rst = 0; in=4'b1100;
      #10 rst = 0; in=4'b1110;
    end
endmodule  
  
  
