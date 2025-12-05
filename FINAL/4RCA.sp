*** title
.option macmod =3
.include '../../saed32nm_hvt.spf'
.include '../FINALSUB/FINALSUB.sp'
.lib '../../saed32nm.lib' TT
.temp 70
.option post
.param SUPPLY=1.8

Vvdd vdd 0 SUPPLY
Vgnd gnd 0 0

.param N=1
.param P=1

*---------------------SOURCES-------------------------
**INPUTS**
* Input sources travel through all possible outputs in the following order:
* 0+0->15+0->15+15->0+15->0+1
Va3 A3 gnd PWL(0ps 0V, 4140ps 0V, 4160ps 1.8V, 20260ps 1.8V, 20280ps 0V, 32740ps 0V)
Va2 A2 gnd PWL(0ps 0V, 2060ps 0V, 2080ps 1.8V, 4140ps 1.8V, 4160ps 0V, 6220ps 0V, 6240ps 1.8V, 18180ps 1.8V, 18200ps 0V, 20260ps 0V, 20280ps 1.8V, 22340ps 1.8V, 22360ps 0V, 32740ps 0V)
Va1 A1 gnd PWL(0ps 0V, 1020ps 0V, 1040ps 1.8V, 2060ps 1.8V, 2080ps 0V, 3100ps 0V, 3120ps 1.8V, 4140ps 1.8V, 4160ps 0V, 5180ps 0V, 5200ps 1.8V, 6220ps 1.8V, 6240ps 0V, 7260ps 0V, 7280ps 1.8V, 17140ps 1.8V, 17160ps 0V, 18180ps 0V, 18200ps 1.8V, 19220ps 1.8V, 19240ps 0V, 20260ps 0V, 20280ps 1.8V, 21300ps 1.8V, 21320ps 0V, 22340ps 0V, 22360ps 1.8V, 23380ps 1.8V, 23400ps 0V, 32740ps 0V)
Va0 A0 gnd PWL(0ps 0V, 500ps 0V, 520ps 1.8V, 1020ps 1.8V, 1040ps 0V, 1540ps 0V, 1560ps 1.8V, 2060ps 1.8V, 2080ps 0V, 2580ps 0V, 2600ps 1.8V, 3100ps 1.8V, 3120ps 0V, 3620ps 0V, 3640ps 1.8V, 4140ps 1.8V, 4160ps 0V, 4660ps 0V, 4680ps 1.8V, 5180ps 1.8V, 5200ps 0V, 5700ps 0V, 5720ps 1.8V, 6220ps 1.8V, 6240ps 0V, 6740ps 0V, 6760ps 1.8V, 7260ps 1.8V, 7280ps 0V, 7780ps 0V, 7800ps 1.8V, 16620ps 1.8V, 16640ps 0V, 17140ps 0V, 17160ps 1.8V, 17660ps 1.8V, 17680ps 0V, 18180ps 0V, 18200ps 1.8V, 18700ps 1.8V, 18720ps 0V, 19220ps 0V, 19240ps 1.8V, 19740ps 1.8V, 19760ps 0V, 20260ps 0V, 20280ps 1.8V, 20780ps 1.8V, 20800ps 0V, 21300ps 0V, 21320ps 1.8V, 21820ps 1.8V, 21840ps 0V, 22340ps 0V, 22360ps 1.8V, 22860ps 1.8V, 22880ps 0V, 23380ps 0V, 23400ps 1.8V, 23900ps 1.8V, 23920ps 0V, 32740ps 0V)
Vb3 B3 gnd PWL(0ps 0V, 11940ps 0V, 11960ps 1.8V, 28580ps 1.8V, 28600ps 0V, 32740ps 0V)
Vb2 B2 gnd PWL(0ps 0V, 9860ps 0V, 9880ps 1.8V, 11940ps 1.8V, 11960ps 0V, 14020ps 0V, 14040ps 1.8V, 26500ps 1.8V, 26520ps 0V, 28580ps 0V, 28600ps 1.8V, 30660ps 1.8V, 30680ps 0V, 32740ps 0V)
Vb1 B1 gnd PWL(0ps 0V, 8820ps 0V, 8840ps 1.8V, 9860ps 1.8V, 9880ps 0V, 10900ps 0V, 10920ps 1.8V, 11940ps 1.8V, 11960ps 0V, 12980ps 0V, 13000ps 1.8V, 14020ps 1.8V, 14040ps 0V, 15060ps 0V, 15080ps 1.8V, 25460ps 1.8V, 25480ps 0V, 26500ps 0V, 26520ps 1.8V, 27540ps 1.8V, 27560ps 0V, 28580ps 0V, 28600ps 1.8V, 29620ps 1.8V, 29640ps 0V, 30660ps 0V, 30680ps 1.8V, 31700ps 1.8V, 31720ps 0V, 32740ps 0V)
Vb0 B0 gnd PWL(0ps 0V, 8300ps 0V, 8320ps 1.8V, 8820ps 1.8V, 8840ps 0V, 9340ps 0V, 9360ps 1.8V, 9860ps 1.8V, 9880ps 0V, 10380ps 0V, 10400ps 1.8V, 10900ps 1.8V, 10920ps 0V, 11420ps 0V, 11440ps 1.8V, 11940ps 1.8V, 11960ps 0V, 12460ps 0V, 12480ps 1.8V, 12980ps 1.8V, 13000ps 0V, 13500ps 0V, 13520ps 1.8V, 14020ps 1.8V, 14040ps 0V, 14540ps 0V, 14560ps 1.8V, 15060ps 1.8V, 15080ps 0V, 15580ps 0V, 15600ps 1.8V, 24940ps 1.8V, 24960ps 0V, 25460ps 0V, 25480ps 1.8V, 25980ps 1.8V, 26000ps 0V, 26500ps 0V, 26520ps 1.8V, 27020ps 1.8V, 27040ps 0V, 27540ps 0V, 27560ps 1.8V, 28060ps 1.8V, 28080ps 0V, 28580ps 0V, 28600ps 1.8V, 29100ps 1.8V, 29120ps 0V, 29620ps 0V, 29640ps 1.8V, 30140ps 1.8V, 30160ps 0V, 30660ps 0V, 30680ps 1.8V, 31180ps 1.8V, 31200ps 0V, 31700ps 0V, 31720ps 1.8V, 32220ps 1.8V, 32240ps 0V, 32740ps 0V)
**CARRY**
Vcin CIN gnd 0v


*---------------------CIRCUIT------------------------
*       input1  input2  cin     sum     cout
Xrc1    A0      B0      CIN     S0      C0      vdd     gnd     adder   N='N'   P='P'
Xrc2    A1      B1      C0      S1      C1      vdd     gnd     adder   N='N'   P='P'
Xrc3    A2      B2      C1      S2      C2      vdd     gnd     adder   N='N'   P='P'
Xrc4    A3      B3      C2      S3      C3      vdd     gnd     adder   N='N'   P='P'


.tran 10ps 33ns
*line below
*.option measform=3

*---------------------------S0 Delay----------------------
***RISE***
.measure tran S0_AhBl_RISE_DELAY
                + TRIG V(A0) VAL='SUPPLY/2' RISE=1
                + TARG V(S0) VAL='SUPPLY/2' RISE=1
.measure tran S0_BlAh_RISE_DELAY
                + TRIG V(B0) VAL='SUPPLY/2' FALL=1 TD=8.8ns
                + TARG V(S0) VAL='SUPPLY/2' RISE=1
.measure tran S0_AlBh_RISE_DELAY
                + TRIG V(A0) VAL='SUPPLY/2' FALL=1 TD=16ns
                + TARG V(S0) VAL='SUPPLY/2' RISE=1
.measure tran S0_BhAl_RISE_DELAY
                + TRIG V(B0) VAL='SUPPLY/2' RISE=1 TD=25ns
                + TARG V(S0) VAL='SUPPLY/2' RISE=1

***FALL***
.measure tran S0_AlBl_FALL_DELAY
                + TRIG V(A0) VAL='SUPPLY/2' FALL=1
                + TARG V(S0) VAL='SUPPLY/2' FALL=1
.measure tran S0_BhAh_FALL_DELAY
                + TRIG V(B0) VAL='SUPPLY/2' RISE=1 TD=8.8ns
                + TARG V(S0) VAL='SUPPLY/2' RISE=1
.measure tran S0_AhBh_FALL_DELAY
                + TRIG V(A0) VAL='SUPPLY/2' RISE=1 TD=16ns
                + TARG V(S0) VAL='SUPPLY/2' RISE=1
.measure tran S0_BlAl_FALL_DELAY
                + TRIG V(B0) VAL='SUPPLY/2' FALL=1 TD=25ns
                + TARG V(S0) VAL='SUPPLY/2' RISE=1
*----------------------------------------------------------


*---------------------------S1 Delay----------------------
***RISE***
.measure tran S1_ArBlCl_RISE_DELAY
                + TRIG V(A1) VAL='SUPPLY/2' RISE=1
                + TARG V(S1) VAL='SUPPLY/2' RISE=1
.measure tran S1_CrAhBh_RISE_DELAY
                + TRIG V(C0) VAL='SUPPLY/2' RISE=1 TD=9ns
                + TARG V(S1) VAL='SUPPLY/2' RISE=1
.measure tran S1_CfAlBh_RISE_DELAY
                + TRIG V(A1) VAL='SUPPLY/2' FALL=1 TD=17.6ns
                + TARG V(S1) VAL='SUPPLY/2' RISE=1
.measure tran S1_BrAlCl_RISE_DELAY
                + TRIG V(B1) VAL='SUPPLY/2' RISE=1 TD=26ns
                + TARG V(S1) VAL='SUPPLY/2' RISE=1

***FALL***
.measure tran S1_AfBlCl_FALL_DELAY
                + TRIG V(A1) VAL='SUPPLY/2' FALL=1
                + TARG V(S1) VAL='SUPPLY/2' FALL=1
.measure tran S1_CrAhBl_FALL_DELAY
                + TRIG V(C0) VAL='SUPPLY/2' RISE=1 TD=8.3ns
                + TARG V(S1) VAL='SUPPLY/2' FALL=1
.measure tran S1_CfAhBh_FALL_DELAY
                + TRIG V(A1) VAL='SUPPLY/2' FALL=1 TD=18.6ns
                + TARG V(S1) VAL='SUPPLY/2' FALL=1
.measure tran S1_BfAlCl_FALL_DELAY
                + TRIG V(B1) VAL='SUPPLY/2' RISE=1 TD=25ns
                + TARG V(S1) VAL='SUPPLY/2' FALL=1
*---------------------------------------------------------

*---------------------------S2 Delay----------------------
***RISE***
.measure tran S2_ArBlCl_RISE_DELAY
                + TRIG V(A2) VAL='SUPPLY/2' RISE=1
                + TARG V(S2) VAL='SUPPLY/2' RISE=1
.measure tran S2_CrAhBh_RISE_DELAY
                + TRIG V(C1) VAL='SUPPLY/2' RISE=1 TD=10.3ns
                + TARG V(S2) VAL='SUPPLY/2' RISE=1
.measure tran S2_CfAlBh_RISE_DELAY
                + TRIG V(A2) VAL='SUPPLY/2' FALL=1 TD=19.8ns
                + TARG V(S2) VAL='SUPPLY/2' RISE=1
.measure tran S2_BrAlCl_RISE_DELAY
                + TRIG V(B2) VAL='SUPPLY/2' RISE=1 TD=28ns
                + TARG V(S2) VAL='SUPPLY/2' RISE=1

***FALL***
.measure tran S2_AfBlCl_FALL_DELAY
                + TRIG V(A2) VAL='SUPPLY/2' FALL=1
                + TARG V(S2) VAL='SUPPLY/2' FALL=1
.measure tran S2_CrAhBl_FALL_DELAY
                + TRIG V(C1) VAL='SUPPLY/2' RISE=1 TD=8ns
                + TARG V(S2) VAL='SUPPLY/2' FALL=1
.measure tran S2_CfAhBh_FALL_DELAY
                + TRIG V(A2) VAL='SUPPLY/2' FALL=1 TD=17.5ns
                + TARG V(S2) VAL='SUPPLY/2' FALL=1
.measure tran S2_BfAlCl_FALL_DELAY
                + TRIG V(B2) VAL='SUPPLY/2' RISE=1 TD=26ns
                + TARG V(S2) VAL='SUPPLY/2' FALL=1
*---------------------------------------------------------

*---------------------------S3 Delay----------------------
***RISE***
.measure tran S3_ArBlCl_RISE_DELAY
                + TRIG V(A3) VAL='SUPPLY/2' RISE=1
                + TARG V(S3) VAL='SUPPLY/2' RISE=1
.measure tran S3_CrAhBh_RISE_DELAY
                + TRIG V(C2) VAL='SUPPLY/2' RISE=1 TD=12.5ns
                + TARG V(S3) VAL='SUPPLY/2' RISE=1
.measure tran S3_CfAlBh_RISE_DELAY
                + TRIG V(A3) VAL='SUPPLY/2' FALL=1 TD=22ns
                + TARG V(S3) VAL='SUPPLY/2' RISE=1
*.measure tran S1_BrAlCl_RISE_DELAY
*               + TRIG V(B0) VAL='SUPPLY/2' RISE=1 TD=28ns
*               + TARG V(S0) VAL='SUPPLY/2' RISE=1

***FALL***
*.measure tran S1_AfBlCl_RISE_DELAY
*               + TRIG V(A1) VAL='SUPPLY/2' FALL=1
*               + TARG V(S1) VAL='SUPPLY/2' FALL=1
.measure tran S3_CrAhBl_FALL_DELAY
                + TRIG V(C2) VAL='SUPPLY/2' RISE=1 TD=8ns
                + TARG V(S3) VAL='SUPPLY/2' FALL=1
.measure tran S3_CfAhBh_FALL_DELAY
                + TRIG V(A3) VAL='SUPPLY/2' FALL=1 TD=18ns
                + TARG V(S3) VAL='SUPPLY/2' FALL=1
.measure tran S3_BfAlCl_FALL_DELAY
                + TRIG V(B3) VAL='SUPPLY/2' RISE=1 TD=28.4ns
                + TARG V(S3) VAL='SUPPLY/2' FALL=1
*---------------------------------------------------------

*---------------------------COUT Delay----------------------
***RISE***
.measure tran COUT_CrAhBl_RISE_DELAY
                + TRIG V(C2) VAL='SUPPLY/2' RISE=1
                + TARG V(C3) VAL='SUPPLY/2' RISE=1
.measure tran COUT_CrAhBh_RISE_DELAY
                + TRIG V(C2) VAL='SUPPLY/2' RISE=1 TD=18.2ns
                + TARG V(C3) VAL='SUPPLY/2' RISE=1

***FALL***
.measure tran COUT_CfAhBl_FALL_DELAY
                + TRIG V(C2) VAL='SUPPLY/2' FALL=1 TD=9.8ns
                + TARG V(C3) VAL='SUPPLY/2' FALL=1
.measure tran COUT_CfAlBh_FALL_DELAY
                + TRIG V(C2) VAL='SUPPLY/2' FALL=1 TD=17.6ns
                + TARG V(C3) VAL='SUPPLY/2' FALL=1
*---------------------------------------------------------

*------------------------POWERRRRRR-----------------------
.measure tran avg_power AVG par('V(vdd)*i(Vvdd)') FROM=0ps TO=33ns
.measure tran max_power MAX par('V(vdd)*i(Vvdd)') FROM=0ps TO=33ns
*---------------------------------------------------------


.alter p_scale_2
.param P = 2
.param N = 1

.alter p_scale_3
.param P = 3
.param N = 1

.alter p_scale_4
.param P = 4
.param N = 1

.alter n_scale_2
.param P = 1
.param N = 2

.alter n_scale_3
.param P = 1
.param N = 3

.alter n_scale_4
.param P = 1
.param N = 4

.alter c_scale_2
.param N = 2
.param P = 2

.alter c_scale_3
.param N = 3
.param P = 3

.alter c_scale_4
.param N = 4
.param P = 4

.end
