`timescale 1ns/1ps
module tb_chip_top;

  // DUT Inputs
  reg clk, rst, ce, valid_in;
  reg [31:0] A0, A1, A2, A3;

  // DUT Outputs
  wire valid_out;
  wire [127:0] P_out;

  // DUT Instance
  chip_top dut (
      .PAD_CLK(clk),
      .PAD_RST(rst),
      .PAD_CE(ce),
      .PAD_VALID_IN(valid_in),
      .PAD_A0(A0),
      .PAD_A1(A1),
      .PAD_A2(A2),
      .PAD_A3(A3),
      .PAD_VALID_OUT(valid_out),
      .PAD_P_OUT(P_out)
  );

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk; // 100 MHz

  // Stimulus
  initial begin
    $dumpfile("chip_top_presynth.vcd");
    $dumpvars(0, tb_chip_top);

    rst = 1; ce = 0; valid_in = 0;
    A0 = 0; A1 = 0; A2 = 0; A3 = 0;
    #20;

    rst = 0; ce = 1;

    // Test 1
    #10;
    valid_in = 1;
    A0 = 3; A1 = 4; A2 = 2; A3 = 5; // Expect 120
    #10 valid_in = 0;

    #50;

    // Test 2
    valid_in = 1;
    A0 = 6; A1 = 7; A2 = 8; A3 = 9; // Expect 3024
    #10 valid_in = 0;

    #100;
    $finish;
  end
endmodule

