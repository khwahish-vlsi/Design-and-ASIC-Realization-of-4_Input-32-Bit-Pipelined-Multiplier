# Design and ASIC Realization of a 4-Input 32-bit Pipelined Multiplier

Tagline: From RTL to routed silicon — a complete ASIC flow on a real arithmetic block.

This repository documents my end-to-end ASIC implementation of a four-input 32-bit pipelined multiplier. 
The work covers the full digital backend pipeline: writing RTL, verifying it, synthesizing it and then driving it through floorplanning, placement, clock tree synthesis, routing and post-route optimization in Cadence Innovus.

> **Usage & Rights** 
> This repository is provided for viewing and evaluation purposes only.  \
> All rights are reserved by the author. Reuse, modification, or redistribution is not permitted without explicit permission.

# What This Project Shows

- How a pipelined arithmetic block is written and verified in RTL 
- How the same design behaves after synthesis (area, timing, power) 
- How physical design stages affect timing, density and wirelength 
- Why timing closure is iterative, not a one command operation 

---

## Project Structure

src/rtl         – Golden Verilog source (design intent)
sim/            – Testbench, waveforms and simulation artifacts
synth/          – Genus scripts, constraints, gate-level netlist and reports
pd/             – Innovus floorplan, placement, CTS, routing scripts, and PD reports
reports/        – Curated timing, power, density and wirelength summaries
docs/images/    – Visual evidence (waveforms, floorplan, placement, routing)

