# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Wed Nov 05 13:03:47 IST 2025

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design chip_top

create_clock -name "clock" -period 2.0 -waveform {0.0 1.0} [get_ports PAD_CLK]
set_clock_transition 0.05 [get_clocks clock]
set_false_path -from [get_ports PAD_RST]
group_path -weight 1.000000 -name CLOCK -to [get_clocks clock]
group_path -weight 1.000000 -name INPUTS -through [list \
  [get_ports PAD_CLK]  \
  [get_ports PAD_RST]  \
  [get_ports PAD_CE]  \
  [get_ports PAD_VALID_IN]  \
  [get_ports {PAD_A0[31]}]  \
  [get_ports {PAD_A0[30]}]  \
  [get_ports {PAD_A0[29]}]  \
  [get_ports {PAD_A0[28]}]  \
  [get_ports {PAD_A0[27]}]  \
  [get_ports {PAD_A0[26]}]  \
  [get_ports {PAD_A0[25]}]  \
  [get_ports {PAD_A0[24]}]  \
  [get_ports {PAD_A0[23]}]  \
  [get_ports {PAD_A0[22]}]  \
  [get_ports {PAD_A0[21]}]  \
  [get_ports {PAD_A0[20]}]  \
  [get_ports {PAD_A0[19]}]  \
  [get_ports {PAD_A0[18]}]  \
  [get_ports {PAD_A0[17]}]  \
  [get_ports {PAD_A0[16]}]  \
  [get_ports {PAD_A0[15]}]  \
  [get_ports {PAD_A0[14]}]  \
  [get_ports {PAD_A0[13]}]  \
  [get_ports {PAD_A0[12]}]  \
  [get_ports {PAD_A0[11]}]  \
  [get_ports {PAD_A0[10]}]  \
  [get_ports {PAD_A0[9]}]  \
  [get_ports {PAD_A0[8]}]  \
  [get_ports {PAD_A0[7]}]  \
  [get_ports {PAD_A0[6]}]  \
  [get_ports {PAD_A0[5]}]  \
  [get_ports {PAD_A0[4]}]  \
  [get_ports {PAD_A0[3]}]  \
  [get_ports {PAD_A0[2]}]  \
  [get_ports {PAD_A0[1]}]  \
  [get_ports {PAD_A0[0]}]  \
  [get_ports {PAD_A1[31]}]  \
  [get_ports {PAD_A1[30]}]  \
  [get_ports {PAD_A1[29]}]  \
  [get_ports {PAD_A1[28]}]  \
  [get_ports {PAD_A1[27]}]  \
  [get_ports {PAD_A1[26]}]  \
  [get_ports {PAD_A1[25]}]  \
  [get_ports {PAD_A1[24]}]  \
  [get_ports {PAD_A1[23]}]  \
  [get_ports {PAD_A1[22]}]  \
  [get_ports {PAD_A1[21]}]  \
  [get_ports {PAD_A1[20]}]  \
  [get_ports {PAD_A1[19]}]  \
  [get_ports {PAD_A1[18]}]  \
  [get_ports {PAD_A1[17]}]  \
  [get_ports {PAD_A1[16]}]  \
  [get_ports {PAD_A1[15]}]  \
  [get_ports {PAD_A1[14]}]  \
  [get_ports {PAD_A1[13]}]  \
  [get_ports {PAD_A1[12]}]  \
  [get_ports {PAD_A1[11]}]  \
  [get_ports {PAD_A1[10]}]  \
  [get_ports {PAD_A1[9]}]  \
  [get_ports {PAD_A1[8]}]  \
  [get_ports {PAD_A1[7]}]  \
  [get_ports {PAD_A1[6]}]  \
  [get_ports {PAD_A1[5]}]  \
  [get_ports {PAD_A1[4]}]  \
  [get_ports {PAD_A1[3]}]  \
  [get_ports {PAD_A1[2]}]  \
  [get_ports {PAD_A1[1]}]  \
  [get_ports {PAD_A1[0]}]  \
  [get_ports {PAD_A2[31]}]  \
  [get_ports {PAD_A2[30]}]  \
  [get_ports {PAD_A2[29]}]  \
  [get_ports {PAD_A2[28]}]  \
  [get_ports {PAD_A2[27]}]  \
  [get_ports {PAD_A2[26]}]  \
  [get_ports {PAD_A2[25]}]  \
  [get_ports {PAD_A2[24]}]  \
  [get_ports {PAD_A2[23]}]  \
  [get_ports {PAD_A2[22]}]  \
  [get_ports {PAD_A2[21]}]  \
  [get_ports {PAD_A2[20]}]  \
  [get_ports {PAD_A2[19]}]  \
  [get_ports {PAD_A2[18]}]  \
  [get_ports {PAD_A2[17]}]  \
  [get_ports {PAD_A2[16]}]  \
  [get_ports {PAD_A2[15]}]  \
  [get_ports {PAD_A2[14]}]  \
  [get_ports {PAD_A2[13]}]  \
  [get_ports {PAD_A2[12]}]  \
  [get_ports {PAD_A2[11]}]  \
  [get_ports {PAD_A2[10]}]  \
  [get_ports {PAD_A2[9]}]  \
  [get_ports {PAD_A2[8]}]  \
  [get_ports {PAD_A2[7]}]  \
  [get_ports {PAD_A2[6]}]  \
  [get_ports {PAD_A2[5]}]  \
  [get_ports {PAD_A2[4]}]  \
  [get_ports {PAD_A2[3]}]  \
  [get_ports {PAD_A2[2]}]  \
  [get_ports {PAD_A2[1]}]  \
  [get_ports {PAD_A2[0]}]  \
  [get_ports {PAD_A3[31]}]  \
  [get_ports {PAD_A3[30]}]  \
  [get_ports {PAD_A3[29]}]  \
  [get_ports {PAD_A3[28]}]  \
  [get_ports {PAD_A3[27]}]  \
  [get_ports {PAD_A3[26]}]  \
  [get_ports {PAD_A3[25]}]  \
  [get_ports {PAD_A3[24]}]  \
  [get_ports {PAD_A3[23]}]  \
  [get_ports {PAD_A3[22]}]  \
  [get_ports {PAD_A3[21]}]  \
  [get_ports {PAD_A3[20]}]  \
  [get_ports {PAD_A3[19]}]  \
  [get_ports {PAD_A3[18]}]  \
  [get_ports {PAD_A3[17]}]  \
  [get_ports {PAD_A3[16]}]  \
  [get_ports {PAD_A3[15]}]  \
  [get_ports {PAD_A3[14]}]  \
  [get_ports {PAD_A3[13]}]  \
  [get_ports {PAD_A3[12]}]  \
  [get_ports {PAD_A3[11]}]  \
  [get_ports {PAD_A3[10]}]  \
  [get_ports {PAD_A3[9]}]  \
  [get_ports {PAD_A3[8]}]  \
  [get_ports {PAD_A3[7]}]  \
  [get_ports {PAD_A3[6]}]  \
  [get_ports {PAD_A3[5]}]  \
  [get_ports {PAD_A3[4]}]  \
  [get_ports {PAD_A3[3]}]  \
  [get_ports {PAD_A3[2]}]  \
  [get_ports {PAD_A3[1]}]  \
  [get_ports {PAD_A3[0]}] ]
group_path -weight 1.000000 -name OUTPUTS -to [list \
  [get_ports PAD_VALID_OUT]  \
  [get_ports {PAD_P_OUT[127]}]  \
  [get_ports {PAD_P_OUT[126]}]  \
  [get_ports {PAD_P_OUT[125]}]  \
  [get_ports {PAD_P_OUT[124]}]  \
  [get_ports {PAD_P_OUT[123]}]  \
  [get_ports {PAD_P_OUT[122]}]  \
  [get_ports {PAD_P_OUT[121]}]  \
  [get_ports {PAD_P_OUT[120]}]  \
  [get_ports {PAD_P_OUT[119]}]  \
  [get_ports {PAD_P_OUT[118]}]  \
  [get_ports {PAD_P_OUT[117]}]  \
  [get_ports {PAD_P_OUT[116]}]  \
  [get_ports {PAD_P_OUT[115]}]  \
  [get_ports {PAD_P_OUT[114]}]  \
  [get_ports {PAD_P_OUT[113]}]  \
  [get_ports {PAD_P_OUT[112]}]  \
  [get_ports {PAD_P_OUT[111]}]  \
  [get_ports {PAD_P_OUT[110]}]  \
  [get_ports {PAD_P_OUT[109]}]  \
  [get_ports {PAD_P_OUT[108]}]  \
  [get_ports {PAD_P_OUT[107]}]  \
  [get_ports {PAD_P_OUT[106]}]  \
  [get_ports {PAD_P_OUT[105]}]  \
  [get_ports {PAD_P_OUT[104]}]  \
  [get_ports {PAD_P_OUT[103]}]  \
  [get_ports {PAD_P_OUT[102]}]  \
  [get_ports {PAD_P_OUT[101]}]  \
  [get_ports {PAD_P_OUT[100]}]  \
  [get_ports {PAD_P_OUT[99]}]  \
  [get_ports {PAD_P_OUT[98]}]  \
  [get_ports {PAD_P_OUT[97]}]  \
  [get_ports {PAD_P_OUT[96]}]  \
  [get_ports {PAD_P_OUT[95]}]  \
  [get_ports {PAD_P_OUT[94]}]  \
  [get_ports {PAD_P_OUT[93]}]  \
  [get_ports {PAD_P_OUT[92]}]  \
  [get_ports {PAD_P_OUT[91]}]  \
  [get_ports {PAD_P_OUT[90]}]  \
  [get_ports {PAD_P_OUT[89]}]  \
  [get_ports {PAD_P_OUT[88]}]  \
  [get_ports {PAD_P_OUT[87]}]  \
  [get_ports {PAD_P_OUT[86]}]  \
  [get_ports {PAD_P_OUT[85]}]  \
  [get_ports {PAD_P_OUT[84]}]  \
  [get_ports {PAD_P_OUT[83]}]  \
  [get_ports {PAD_P_OUT[82]}]  \
  [get_ports {PAD_P_OUT[81]}]  \
  [get_ports {PAD_P_OUT[80]}]  \
  [get_ports {PAD_P_OUT[79]}]  \
  [get_ports {PAD_P_OUT[78]}]  \
  [get_ports {PAD_P_OUT[77]}]  \
  [get_ports {PAD_P_OUT[76]}]  \
  [get_ports {PAD_P_OUT[75]}]  \
  [get_ports {PAD_P_OUT[74]}]  \
  [get_ports {PAD_P_OUT[73]}]  \
  [get_ports {PAD_P_OUT[72]}]  \
  [get_ports {PAD_P_OUT[71]}]  \
  [get_ports {PAD_P_OUT[70]}]  \
  [get_ports {PAD_P_OUT[69]}]  \
  [get_ports {PAD_P_OUT[68]}]  \
  [get_ports {PAD_P_OUT[67]}]  \
  [get_ports {PAD_P_OUT[66]}]  \
  [get_ports {PAD_P_OUT[65]}]  \
  [get_ports {PAD_P_OUT[64]}]  \
  [get_ports {PAD_P_OUT[63]}]  \
  [get_ports {PAD_P_OUT[62]}]  \
  [get_ports {PAD_P_OUT[61]}]  \
  [get_ports {PAD_P_OUT[60]}]  \
  [get_ports {PAD_P_OUT[59]}]  \
  [get_ports {PAD_P_OUT[58]}]  \
  [get_ports {PAD_P_OUT[57]}]  \
  [get_ports {PAD_P_OUT[56]}]  \
  [get_ports {PAD_P_OUT[55]}]  \
  [get_ports {PAD_P_OUT[54]}]  \
  [get_ports {PAD_P_OUT[53]}]  \
  [get_ports {PAD_P_OUT[52]}]  \
  [get_ports {PAD_P_OUT[51]}]  \
  [get_ports {PAD_P_OUT[50]}]  \
  [get_ports {PAD_P_OUT[49]}]  \
  [get_ports {PAD_P_OUT[48]}]  \
  [get_ports {PAD_P_OUT[47]}]  \
  [get_ports {PAD_P_OUT[46]}]  \
  [get_ports {PAD_P_OUT[45]}]  \
  [get_ports {PAD_P_OUT[44]}]  \
  [get_ports {PAD_P_OUT[43]}]  \
  [get_ports {PAD_P_OUT[42]}]  \
  [get_ports {PAD_P_OUT[41]}]  \
  [get_ports {PAD_P_OUT[40]}]  \
  [get_ports {PAD_P_OUT[39]}]  \
  [get_ports {PAD_P_OUT[38]}]  \
  [get_ports {PAD_P_OUT[37]}]  \
  [get_ports {PAD_P_OUT[36]}]  \
  [get_ports {PAD_P_OUT[35]}]  \
  [get_ports {PAD_P_OUT[34]}]  \
  [get_ports {PAD_P_OUT[33]}]  \
  [get_ports {PAD_P_OUT[32]}]  \
  [get_ports {PAD_P_OUT[31]}]  \
  [get_ports {PAD_P_OUT[30]}]  \
  [get_ports {PAD_P_OUT[29]}]  \
  [get_ports {PAD_P_OUT[28]}]  \
  [get_ports {PAD_P_OUT[27]}]  \
  [get_ports {PAD_P_OUT[26]}]  \
  [get_ports {PAD_P_OUT[25]}]  \
  [get_ports {PAD_P_OUT[24]}]  \
  [get_ports {PAD_P_OUT[23]}]  \
  [get_ports {PAD_P_OUT[22]}]  \
  [get_ports {PAD_P_OUT[21]}]  \
  [get_ports {PAD_P_OUT[20]}]  \
  [get_ports {PAD_P_OUT[19]}]  \
  [get_ports {PAD_P_OUT[18]}]  \
  [get_ports {PAD_P_OUT[17]}]  \
  [get_ports {PAD_P_OUT[16]}]  \
  [get_ports {PAD_P_OUT[15]}]  \
  [get_ports {PAD_P_OUT[14]}]  \
  [get_ports {PAD_P_OUT[13]}]  \
  [get_ports {PAD_P_OUT[12]}]  \
  [get_ports {PAD_P_OUT[11]}]  \
  [get_ports {PAD_P_OUT[10]}]  \
  [get_ports {PAD_P_OUT[9]}]  \
  [get_ports {PAD_P_OUT[8]}]  \
  [get_ports {PAD_P_OUT[7]}]  \
  [get_ports {PAD_P_OUT[6]}]  \
  [get_ports {PAD_P_OUT[5]}]  \
  [get_ports {PAD_P_OUT[4]}]  \
  [get_ports {PAD_P_OUT[3]}]  \
  [get_ports {PAD_P_OUT[2]}]  \
  [get_ports {PAD_P_OUT[1]}]  \
  [get_ports {PAD_P_OUT[0]}] ]
group_path -weight 1.000000 -name COMBO -from [list \
  [get_ports PAD_CLK]  \
  [get_ports PAD_RST]  \
  [get_ports PAD_CE]  \
  [get_ports PAD_VALID_IN]  \
  [get_ports {PAD_A0[31]}]  \
  [get_ports {PAD_A0[30]}]  \
  [get_ports {PAD_A0[29]}]  \
  [get_ports {PAD_A0[28]}]  \
  [get_ports {PAD_A0[27]}]  \
  [get_ports {PAD_A0[26]}]  \
  [get_ports {PAD_A0[25]}]  \
  [get_ports {PAD_A0[24]}]  \
  [get_ports {PAD_A0[23]}]  \
  [get_ports {PAD_A0[22]}]  \
  [get_ports {PAD_A0[21]}]  \
  [get_ports {PAD_A0[20]}]  \
  [get_ports {PAD_A0[19]}]  \
  [get_ports {PAD_A0[18]}]  \
  [get_ports {PAD_A0[17]}]  \
  [get_ports {PAD_A0[16]}]  \
  [get_ports {PAD_A0[15]}]  \
  [get_ports {PAD_A0[14]}]  \
  [get_ports {PAD_A0[13]}]  \
  [get_ports {PAD_A0[12]}]  \
  [get_ports {PAD_A0[11]}]  \
  [get_ports {PAD_A0[10]}]  \
  [get_ports {PAD_A0[9]}]  \
  [get_ports {PAD_A0[8]}]  \
  [get_ports {PAD_A0[7]}]  \
  [get_ports {PAD_A0[6]}]  \
  [get_ports {PAD_A0[5]}]  \
  [get_ports {PAD_A0[4]}]  \
  [get_ports {PAD_A0[3]}]  \
  [get_ports {PAD_A0[2]}]  \
  [get_ports {PAD_A0[1]}]  \
  [get_ports {PAD_A0[0]}]  \
  [get_ports {PAD_A1[31]}]  \
  [get_ports {PAD_A1[30]}]  \
  [get_ports {PAD_A1[29]}]  \
  [get_ports {PAD_A1[28]}]  \
  [get_ports {PAD_A1[27]}]  \
  [get_ports {PAD_A1[26]}]  \
  [get_ports {PAD_A1[25]}]  \
  [get_ports {PAD_A1[24]}]  \
  [get_ports {PAD_A1[23]}]  \
  [get_ports {PAD_A1[22]}]  \
  [get_ports {PAD_A1[21]}]  \
  [get_ports {PAD_A1[20]}]  \
  [get_ports {PAD_A1[19]}]  \
  [get_ports {PAD_A1[18]}]  \
  [get_ports {PAD_A1[17]}]  \
  [get_ports {PAD_A1[16]}]  \
  [get_ports {PAD_A1[15]}]  \
  [get_ports {PAD_A1[14]}]  \
  [get_ports {PAD_A1[13]}]  \
  [get_ports {PAD_A1[12]}]  \
  [get_ports {PAD_A1[11]}]  \
  [get_ports {PAD_A1[10]}]  \
  [get_ports {PAD_A1[9]}]  \
  [get_ports {PAD_A1[8]}]  \
  [get_ports {PAD_A1[7]}]  \
  [get_ports {PAD_A1[6]}]  \
  [get_ports {PAD_A1[5]}]  \
  [get_ports {PAD_A1[4]}]  \
  [get_ports {PAD_A1[3]}]  \
  [get_ports {PAD_A1[2]}]  \
  [get_ports {PAD_A1[1]}]  \
  [get_ports {PAD_A1[0]}]  \
  [get_ports {PAD_A2[31]}]  \
  [get_ports {PAD_A2[30]}]  \
  [get_ports {PAD_A2[29]}]  \
  [get_ports {PAD_A2[28]}]  \
  [get_ports {PAD_A2[27]}]  \
  [get_ports {PAD_A2[26]}]  \
  [get_ports {PAD_A2[25]}]  \
  [get_ports {PAD_A2[24]}]  \
  [get_ports {PAD_A2[23]}]  \
  [get_ports {PAD_A2[22]}]  \
  [get_ports {PAD_A2[21]}]  \
  [get_ports {PAD_A2[20]}]  \
  [get_ports {PAD_A2[19]}]  \
  [get_ports {PAD_A2[18]}]  \
  [get_ports {PAD_A2[17]}]  \
  [get_ports {PAD_A2[16]}]  \
  [get_ports {PAD_A2[15]}]  \
  [get_ports {PAD_A2[14]}]  \
  [get_ports {PAD_A2[13]}]  \
  [get_ports {PAD_A2[12]}]  \
  [get_ports {PAD_A2[11]}]  \
  [get_ports {PAD_A2[10]}]  \
  [get_ports {PAD_A2[9]}]  \
  [get_ports {PAD_A2[8]}]  \
  [get_ports {PAD_A2[7]}]  \
  [get_ports {PAD_A2[6]}]  \
  [get_ports {PAD_A2[5]}]  \
  [get_ports {PAD_A2[4]}]  \
  [get_ports {PAD_A2[3]}]  \
  [get_ports {PAD_A2[2]}]  \
  [get_ports {PAD_A2[1]}]  \
  [get_ports {PAD_A2[0]}]  \
  [get_ports {PAD_A3[31]}]  \
  [get_ports {PAD_A3[30]}]  \
  [get_ports {PAD_A3[29]}]  \
  [get_ports {PAD_A3[28]}]  \
  [get_ports {PAD_A3[27]}]  \
  [get_ports {PAD_A3[26]}]  \
  [get_ports {PAD_A3[25]}]  \
  [get_ports {PAD_A3[24]}]  \
  [get_ports {PAD_A3[23]}]  \
  [get_ports {PAD_A3[22]}]  \
  [get_ports {PAD_A3[21]}]  \
  [get_ports {PAD_A3[20]}]  \
  [get_ports {PAD_A3[19]}]  \
  [get_ports {PAD_A3[18]}]  \
  [get_ports {PAD_A3[17]}]  \
  [get_ports {PAD_A3[16]}]  \
  [get_ports {PAD_A3[15]}]  \
  [get_ports {PAD_A3[14]}]  \
  [get_ports {PAD_A3[13]}]  \
  [get_ports {PAD_A3[12]}]  \
  [get_ports {PAD_A3[11]}]  \
  [get_ports {PAD_A3[10]}]  \
  [get_ports {PAD_A3[9]}]  \
  [get_ports {PAD_A3[8]}]  \
  [get_ports {PAD_A3[7]}]  \
  [get_ports {PAD_A3[6]}]  \
  [get_ports {PAD_A3[5]}]  \
  [get_ports {PAD_A3[4]}]  \
  [get_ports {PAD_A3[3]}]  \
  [get_ports {PAD_A3[2]}]  \
  [get_ports {PAD_A3[1]}]  \
  [get_ports {PAD_A3[0]}] ] -to [list \
  [get_ports PAD_VALID_OUT]  \
  [get_ports {PAD_P_OUT[127]}]  \
  [get_ports {PAD_P_OUT[126]}]  \
  [get_ports {PAD_P_OUT[125]}]  \
  [get_ports {PAD_P_OUT[124]}]  \
  [get_ports {PAD_P_OUT[123]}]  \
  [get_ports {PAD_P_OUT[122]}]  \
  [get_ports {PAD_P_OUT[121]}]  \
  [get_ports {PAD_P_OUT[120]}]  \
  [get_ports {PAD_P_OUT[119]}]  \
  [get_ports {PAD_P_OUT[118]}]  \
  [get_ports {PAD_P_OUT[117]}]  \
  [get_ports {PAD_P_OUT[116]}]  \
  [get_ports {PAD_P_OUT[115]}]  \
  [get_ports {PAD_P_OUT[114]}]  \
  [get_ports {PAD_P_OUT[113]}]  \
  [get_ports {PAD_P_OUT[112]}]  \
  [get_ports {PAD_P_OUT[111]}]  \
  [get_ports {PAD_P_OUT[110]}]  \
  [get_ports {PAD_P_OUT[109]}]  \
  [get_ports {PAD_P_OUT[108]}]  \
  [get_ports {PAD_P_OUT[107]}]  \
  [get_ports {PAD_P_OUT[106]}]  \
  [get_ports {PAD_P_OUT[105]}]  \
  [get_ports {PAD_P_OUT[104]}]  \
  [get_ports {PAD_P_OUT[103]}]  \
  [get_ports {PAD_P_OUT[102]}]  \
  [get_ports {PAD_P_OUT[101]}]  \
  [get_ports {PAD_P_OUT[100]}]  \
  [get_ports {PAD_P_OUT[99]}]  \
  [get_ports {PAD_P_OUT[98]}]  \
  [get_ports {PAD_P_OUT[97]}]  \
  [get_ports {PAD_P_OUT[96]}]  \
  [get_ports {PAD_P_OUT[95]}]  \
  [get_ports {PAD_P_OUT[94]}]  \
  [get_ports {PAD_P_OUT[93]}]  \
  [get_ports {PAD_P_OUT[92]}]  \
  [get_ports {PAD_P_OUT[91]}]  \
  [get_ports {PAD_P_OUT[90]}]  \
  [get_ports {PAD_P_OUT[89]}]  \
  [get_ports {PAD_P_OUT[88]}]  \
  [get_ports {PAD_P_OUT[87]}]  \
  [get_ports {PAD_P_OUT[86]}]  \
  [get_ports {PAD_P_OUT[85]}]  \
  [get_ports {PAD_P_OUT[84]}]  \
  [get_ports {PAD_P_OUT[83]}]  \
  [get_ports {PAD_P_OUT[82]}]  \
  [get_ports {PAD_P_OUT[81]}]  \
  [get_ports {PAD_P_OUT[80]}]  \
  [get_ports {PAD_P_OUT[79]}]  \
  [get_ports {PAD_P_OUT[78]}]  \
  [get_ports {PAD_P_OUT[77]}]  \
  [get_ports {PAD_P_OUT[76]}]  \
  [get_ports {PAD_P_OUT[75]}]  \
  [get_ports {PAD_P_OUT[74]}]  \
  [get_ports {PAD_P_OUT[73]}]  \
  [get_ports {PAD_P_OUT[72]}]  \
  [get_ports {PAD_P_OUT[71]}]  \
  [get_ports {PAD_P_OUT[70]}]  \
  [get_ports {PAD_P_OUT[69]}]  \
  [get_ports {PAD_P_OUT[68]}]  \
  [get_ports {PAD_P_OUT[67]}]  \
  [get_ports {PAD_P_OUT[66]}]  \
  [get_ports {PAD_P_OUT[65]}]  \
  [get_ports {PAD_P_OUT[64]}]  \
  [get_ports {PAD_P_OUT[63]}]  \
  [get_ports {PAD_P_OUT[62]}]  \
  [get_ports {PAD_P_OUT[61]}]  \
  [get_ports {PAD_P_OUT[60]}]  \
  [get_ports {PAD_P_OUT[59]}]  \
  [get_ports {PAD_P_OUT[58]}]  \
  [get_ports {PAD_P_OUT[57]}]  \
  [get_ports {PAD_P_OUT[56]}]  \
  [get_ports {PAD_P_OUT[55]}]  \
  [get_ports {PAD_P_OUT[54]}]  \
  [get_ports {PAD_P_OUT[53]}]  \
  [get_ports {PAD_P_OUT[52]}]  \
  [get_ports {PAD_P_OUT[51]}]  \
  [get_ports {PAD_P_OUT[50]}]  \
  [get_ports {PAD_P_OUT[49]}]  \
  [get_ports {PAD_P_OUT[48]}]  \
  [get_ports {PAD_P_OUT[47]}]  \
  [get_ports {PAD_P_OUT[46]}]  \
  [get_ports {PAD_P_OUT[45]}]  \
  [get_ports {PAD_P_OUT[44]}]  \
  [get_ports {PAD_P_OUT[43]}]  \
  [get_ports {PAD_P_OUT[42]}]  \
  [get_ports {PAD_P_OUT[41]}]  \
  [get_ports {PAD_P_OUT[40]}]  \
  [get_ports {PAD_P_OUT[39]}]  \
  [get_ports {PAD_P_OUT[38]}]  \
  [get_ports {PAD_P_OUT[37]}]  \
  [get_ports {PAD_P_OUT[36]}]  \
  [get_ports {PAD_P_OUT[35]}]  \
  [get_ports {PAD_P_OUT[34]}]  \
  [get_ports {PAD_P_OUT[33]}]  \
  [get_ports {PAD_P_OUT[32]}]  \
  [get_ports {PAD_P_OUT[31]}]  \
  [get_ports {PAD_P_OUT[30]}]  \
  [get_ports {PAD_P_OUT[29]}]  \
  [get_ports {PAD_P_OUT[28]}]  \
  [get_ports {PAD_P_OUT[27]}]  \
  [get_ports {PAD_P_OUT[26]}]  \
  [get_ports {PAD_P_OUT[25]}]  \
  [get_ports {PAD_P_OUT[24]}]  \
  [get_ports {PAD_P_OUT[23]}]  \
  [get_ports {PAD_P_OUT[22]}]  \
  [get_ports {PAD_P_OUT[21]}]  \
  [get_ports {PAD_P_OUT[20]}]  \
  [get_ports {PAD_P_OUT[19]}]  \
  [get_ports {PAD_P_OUT[18]}]  \
  [get_ports {PAD_P_OUT[17]}]  \
  [get_ports {PAD_P_OUT[16]}]  \
  [get_ports {PAD_P_OUT[15]}]  \
  [get_ports {PAD_P_OUT[14]}]  \
  [get_ports {PAD_P_OUT[13]}]  \
  [get_ports {PAD_P_OUT[12]}]  \
  [get_ports {PAD_P_OUT[11]}]  \
  [get_ports {PAD_P_OUT[10]}]  \
  [get_ports {PAD_P_OUT[9]}]  \
  [get_ports {PAD_P_OUT[8]}]  \
  [get_ports {PAD_P_OUT[7]}]  \
  [get_ports {PAD_P_OUT[6]}]  \
  [get_ports {PAD_P_OUT[5]}]  \
  [get_ports {PAD_P_OUT[4]}]  \
  [get_ports {PAD_P_OUT[3]}]  \
  [get_ports {PAD_P_OUT[2]}]  \
  [get_ports {PAD_P_OUT[1]}]  \
  [get_ports {PAD_P_OUT[0]}] ]
group_path -weight 1.000000 -name cg_enable_group_clock -through [list \
  [get_pins core/RC_CG_HIER_INST0/enable]  \
  [get_pins core/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins core/RC_CG_HIER_INST0/enable]  \
  [get_pins core/RC_CG_HIER_INST0/RC_CGIC_INST/E]  \
  [get_pins core/RC_CG_HIER_INST0/enable]  \
  [get_pins core/RC_CG_HIER_INST0/RC_CGIC_INST/E] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports PAD_RST]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports PAD_CE]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports PAD_VALID_IN]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A0[0]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A1[0]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A2[0]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_A3[0]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports PAD_VALID_OUT]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[127]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[126]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[125]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[124]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[123]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[122]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[121]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[120]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[119]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[118]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[117]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[116]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[115]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[114]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[113]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[112]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[111]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[110]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[109]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[108]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[107]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[106]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[105]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[104]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[103]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[102]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[101]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[100]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[99]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[98]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[97]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[96]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[95]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[94]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[93]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[92]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[91]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[90]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[89]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[88]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[87]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[86]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[85]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[84]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[83]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[82]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[81]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[80]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[79]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[78]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[77]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[76]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[75]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[74]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[73]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[72]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[71]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[70]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[69]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[68]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[67]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[66]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[65]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[64]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[63]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[62]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[61]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[60]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[59]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[58]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[57]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[56]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[55]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[54]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[53]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[52]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[51]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[50]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[49]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[48]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[47]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[46]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[45]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[44]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[43]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[42]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[41]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[40]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[39]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[38]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[37]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[36]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[35]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[34]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[33]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[32]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[31]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[30]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[29]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[28]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[27]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[26]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[25]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[24]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[23]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[22]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[21]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[20]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[19]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[18]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[17]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[16]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[15]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[14]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[13]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[12]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[11]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[10]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[9]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[8]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[7]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[6]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[5]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[4]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[3]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[2]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[1]}]
set_output_delay -clock [get_clocks clock] -add_delay -max 0.5 [get_ports {PAD_P_OUT[0]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports PAD_RST]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports PAD_CE]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports PAD_VALID_IN]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A0[0]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A1[0]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A2[0]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[31]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[30]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[29]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[28]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[27]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[26]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[25]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[24]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[23]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[22]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[21]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[20]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[19]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[18]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[17]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[16]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[15]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[14]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[13]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[12]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[11]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[10]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[9]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[8]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[7]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[6]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[5]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[4]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[3]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[2]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[1]}]
set_input_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_A3[0]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports PAD_VALID_OUT]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[127]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[126]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[125]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[124]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[123]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[122]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[121]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[120]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[119]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[118]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[117]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[116]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[115]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[114]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[113]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[112]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[111]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[110]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[109]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[108]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[107]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[106]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[105]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[104]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[103]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[102]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[101]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[100]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[99]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[98]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[97]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[96]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[95]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[94]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[93]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[92]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[91]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[90]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[89]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[88]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[87]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[86]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[85]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[84]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[83]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[82]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[81]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[80]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[79]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[78]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[77]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[76]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[75]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[74]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[73]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[72]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[71]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[70]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[69]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[68]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[67]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[66]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[65]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[64]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[63]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[62]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[61]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[60]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[59]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[58]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[57]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[56]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[55]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[54]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[53]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[52]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[51]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[50]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[49]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[48]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[47]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[46]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[45]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[44]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[43]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[42]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[41]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[40]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[39]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[38]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[37]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[36]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[35]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[34]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[33]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[32]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[31]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[30]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[29]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[28]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[27]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[26]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[25]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[24]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[23]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[22]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[21]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[20]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[19]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[18]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[17]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[16]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[15]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[14]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[13]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[12]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[11]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[10]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[9]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[8]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[7]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[6]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[5]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[4]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[3]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[2]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[1]}]
set_output_delay -clock [get_clocks clock] -add_delay -min 0.1 [get_ports {PAD_P_OUT[0]}]
set_max_fanout 30.000 [current_design]
set_max_transition 0.2 [current_design]
set_max_capacitance 80.0 [current_design]
set_wire_load_mode "enclosed"
set_clock_latency -min 0.05 [get_clocks clock]
set_clock_latency -max 0.25 [get_clocks clock]
set_clock_latency -source -max 0.25 [get_clocks clock]
set_clock_latency -source -min 0.05 [get_clocks clock]
set_clock_uncertainty -setup 0.1 [get_clocks clock]
set_clock_uncertainty -hold 0.1 [get_clocks clock]
