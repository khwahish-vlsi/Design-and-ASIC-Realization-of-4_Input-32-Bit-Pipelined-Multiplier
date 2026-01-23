# Physical Design Results Across Flow Stages

| Stage           | WNS Setup (ns) | WNS Hold (ns) | TNS Setup (ns) | TNS Hold (ns) | Density (%) | Power (mW) | Wirelength (µm)  |
|-----------------|----------------|---------------|----------------|---------------|-------------|------------|------------------|
| Placement       | -1.125         | -0.053        | -152.942       | -3.459        | 93.419      | 17.79      | 404,359          |
| Pre-CTS Opt     | -0.939         | -0.052        | -136.972       | -3.647        | 94.374      | 18.97      | 398,532          |
| CTS             | -0.660         | -10.328       | -50.905        | -1347.2       | 95.112      | 20.10      | 415,122          |
| Post-CTS Opt    | -0.716         | -10.400       | -55.422        | -1344.1       | 95.001      | 20.34      | 434,723          |
| Route           | -0.859         | -0.260        | -67.550        | -12.251       | 95.001      | 17.97      | 435,294          |
| Post-Route Opt  | -0.857         | -0.270        | -65.643        | -12.260       | 95.015      | 17.97      | 435,363          |

This table shows how timing, density, power, and interconnect evolve across the physical design flow.

