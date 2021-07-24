// Code your testbench here
// or browse Examples
module sipotb();
  reg clk,in,rst;
  wire [3:0]q;
  sipo dut(clk,in,rst,q);
  
  initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      rst=1;
      #10 rst=0;in=1;
      #10 in=0;
      #10 in=1;
      #10 in=0;
      end
  
  initial 
    begin
      $dumpfile("sipotb.vcd");
      $dumpvars(0,sipotb);
      #100 $finish;
    end
  
endmodule
