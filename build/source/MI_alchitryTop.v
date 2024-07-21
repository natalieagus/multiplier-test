/*
    This file was generated automatically by Alchitry Labs 2.0.10-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
module MI_alchitryTop (
    input P_clk,
    input P_rst_n,
    output reg [7:0] P_led,
    input P_usbRx,
    output reg P_usbTx,
    output reg [23:0] P_ioLed,
    output reg [7:0] P_ioSeg,
    output reg [3:0] P_ioSel,
    input [4:0] P_ioButton,
    input [23:0] P_ioDip
  );
  
  
  reg rst;
  
  reg M_resetCond_in;
  wire M_resetCond_out;
  MI_resetConditioner_958b5166 resetCond (
    .P_clk(P_clk),
    .P_in(M_resetCond_in),
    .P_out(M_resetCond_out)
  );
  
  always @* begin
    M_resetCond_in = ~P_rst_n;
    rst = M_resetCond_out;
    P_led = 8'h0;
    P_usbTx = P_usbRx;
    P_ioLed = 24'h0;
    P_ioSeg = 8'hff;
    P_ioSel = 4'hf;
  end
  
endmodule