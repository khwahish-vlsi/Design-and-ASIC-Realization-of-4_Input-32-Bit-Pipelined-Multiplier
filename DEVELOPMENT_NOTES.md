# Development Notes

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
