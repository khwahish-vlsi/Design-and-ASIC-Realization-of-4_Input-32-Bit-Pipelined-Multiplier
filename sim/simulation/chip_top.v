`timescale 1ns/1ps
// ============================================================================
// CHIP TOP MODULE — wraps core multiplier with pad placeholders
// ============================================================================
module chip_top #(
    parameter integer W = 32
)(
    input  wire           PAD_CLK,
    input  wire           PAD_RST,
    input  wire           PAD_CE,
    input  wire           PAD_VALID_IN,
    input  wire [W-1:0]   PAD_A0,
    input  wire [W-1:0]   PAD_A1,
    input  wire [W-1:0]   PAD_A2,
    input  wire [W-1:0]   PAD_A3,
    output wire           PAD_VALID_OUT,
    output wire [4*W-1:0] PAD_P_OUT
);

    // Internal nets (post-pad)
    wire clk_i, rst_i, ce_i, valid_in_i, valid_out_o;
    wire [W-1:0] A0_i, A1_i, A2_i, A3_i;
    wire [4*W-1:0] P_out_o;

    // Assign direct connections (pads = pass-through for simulation)
    assign clk_i       = PAD_CLK;
    assign rst_i       = PAD_RST;
    assign ce_i        = PAD_CE;
    assign valid_in_i  = PAD_VALID_IN;
    assign A0_i        = PAD_A0;
    assign A1_i        = PAD_A1;
    assign A2_i        = PAD_A2;
    assign A3_i        = PAD_A3;
    assign PAD_VALID_OUT = valid_out_o;
    assign PAD_P_OUT   = P_out_o;

    // Core instance
    four_input_pipelined_multiplier #(.W(W)) core (
        .clk(clk_i),
        .rst(rst_i),
        .ce(ce_i),
        .valid_in(valid_in_i),
        .A0(A0_i),
        .A1(A1_i),
        .A2(A2_i),
        .A3(A3_i),
        .valid_out(valid_out_o),
        .P_out(P_out_o)
    );
endmodule

