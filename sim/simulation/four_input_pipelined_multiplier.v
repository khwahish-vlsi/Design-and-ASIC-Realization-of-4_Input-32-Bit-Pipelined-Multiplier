`timescale 1ns/1ps
// ============================================================================
// Four-Input 32-bit Pipelined Multiplier (Verilog-2001 Compatible)
// ============================================================================
module four_input_pipelined_multiplier #(parameter W = 32)(
    input  wire           clk,
    input  wire           rst,
    input  wire           ce,
    input  wire           valid_in,
    input  wire [W-1:0]   A0,
    input  wire [W-1:0]   A1,
    input  wire [W-1:0]   A2,
    input  wire [W-1:0]   A3,
    output reg            valid_out,
    output reg [4*W-1:0]  P_out
);

    // Derived widths (avoid SystemVerilog int)
    parameter W64  = 2 * W;
    parameter W128 = 4 * W;

    // Stage 0 registers
    reg [W-1:0] A0_r, A1_r, A2_r, A3_r;
    reg v_s0;

    // Stage 1: two 32-bit multipliers
    wire [W64-1:0] P0_next, P1_next;
    reg  [W64-1:0] P0_r, P1_r;
    reg v_s1;

    // Stage 2: one 64-bit multiplier
    wire [W128-1:0] P2_next;
    reg  [W128-1:0] P2_r;
    reg v_s2;

    // Combinational logic for multiplication
    assign P0_next = A0_r * A1_r;
    assign P1_next = A2_r * A3_r;
    assign P2_next = P0_r * P1_r;

    // Pipeline control
    always @(posedge clk) begin
        if (rst) begin
            // Reset all pipeline registers
            A0_r <= 0; A1_r <= 0; A2_r <= 0; A3_r <= 0; v_s0 <= 1'b0;
            P0_r <= 0; P1_r <= 0; v_s1 <= 1'b0;
            P2_r <= 0; v_s2 <= 1'b0;
            P_out <= 0; valid_out <= 1'b0;
        end else if (ce) begin
            // Stage 0
            A0_r <= A0; A1_r <= A1; A2_r <= A2; A3_r <= A3; v_s0 <= valid_in;
            // Stage 1
            P0_r <= P0_next; P1_r <= P1_next; v_s1 <= v_s0;
            // Stage 2
            P2_r <= P2_next; v_s2 <= v_s1;
            // Stage 3 (output)
            P_out <= P2_r; valid_out <= v_s2;
        end
    end
endmodule

