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

# Developement Notes

This project was built as a complete end-to-end ASIC flow, starting from RTL design and ending with a routed physical layout.

I started by using Verilog to design a 32-bit pipelined multiplier with four inputs. In order to provide explicit and verifiable pipeline behavior, the architecture was designed to support cycle aligned operations using `valid_in` and `valid_out` handshaking. After developing the top level wrapper and a self written testbench, I used Xcelium and SimVision to check waveforms for correct data alignment and latency in order to confirm functional correctness.


I used Cadence Genus for synthesis after functional validation. I created the gate level netlist, established timing constraints and examined timing, area, and power reports. This phase made it easier for me to comprehend how constraints influence the synthesized design and how high level RTL decisions are translated into actual gate structures.

The physical design phase in Innovus was the most instructive part of the project. I drove the design through:

- Floorplanning with fixed core utilization and boundary margins 
- Standard cell placement and pre CTS optimization 
- Clock Tree Synthesis using defined skew and transition limits 
- Post CTS repair and optimization 
- Global and detailed routing 
- Post route optimization and signoff style checks 

At each stage, I monitored WNS, TNS, density, power and wirelength. The CTS step made it evident how clock insertion can deteriorate timing, particularly hold and total negative slack  and how post CTS and post route optimization are necessary to stabilize the design. The abstract concept of "timing closure" became tangible and quantifiable when these changes were observed across stages.

This project demonstrated to me how RTL is turned into actual silicon and how backend trade-offs have a direct impact on routability, power and performance. More significantly, it showed me that ASIC implementation is not a single command sequence but rather an iterative engineering process.


## Project Structure

- `src/rtl/` – Golden Verilog source (design intent)
- `sim/` – Testbench, waveforms, and simulation artifacts
- `synth/` – Genus scripts, constraints, gate-level netlist, and synthesis reports
- `pd/` – Innovus floorplan, placement, CTS, routing scripts, and PD reports
- `reports/` – Curated timing, power, density, and wirelength summaries
- `docs/images/` – Visual evidence (waveforms, floorplan, placement, routing)


