module sisotb();
  reg clk,in,rst;
  wire q;
  siso dut(clk,in,rst,q);
  
  initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      rst=1;
      #10 rst=0;in=0;
      #10 in=1;
      #10 in=1;
      #10 in=0;
      end
  
  initial 
    begin
      $dumpfile("sisotb.vcd");
      $dumpvars(0,sisotb);
      #100 $finish;
    end
  
endmodule
