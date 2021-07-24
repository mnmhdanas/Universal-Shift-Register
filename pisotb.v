module pisotb();
  reg ld,clk,rst;
  reg [3:0] in;
  wire q;
  piso dut(in,ld,clk,rst,q);
  
   initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
 initial 
    begin
      $dumpfile("pisotb.vcd");
      $dumpvars(0,pisotb);
      #100 $finish;
    end
  
  initial 
    begin
      rst=1;
      #10 rst=0;ld=1;in=4'b0111;
      #10 ld=0;in=0;
    end
endmodule   
