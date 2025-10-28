*** nor3.sp
* Author: Mohammed Akinbayo, mohammed.akinbayo@bison.howard.edu
* finds delay of 3 input nor gate with proper sizing
**********************************************************

.option macmod=3
.lib '../../saed32nm.lib' TT
.temp 70
.option post

*----------SOURCES------------

Vdd vdd 0 1.8v
Vgnd gnd 0 0v

*INPUTS*
Va	a	gnd	PWL(0ps 0v, 1300ps 0v, 1400ps 1.8v, 1500ps 1.8v, 1600ps 0v, 1700ps 0v, 1800ps 1.8v, 1900ps 1.8v, 2000ps 0v, 2100ps 0v, 2200ps 1.8v, 2300ps 1.8v, 2400ps 0v, 2500ps 0v, 2600ps 1.8v, 2700ps 1.8v, 2800ps 0v, 2900ps 0v) 
Vb	b	gnd	PWL(0ps 0v, 500ps 0v, 600ps 1.8v, 700ps 1.8v, 800ps 0v, 900ps 0v, 1000ps 1.8v, 1100ps 1.8v, 1200ps 0v, 2100ps 0v, 2200ps 1.8v, 2300ps 1.8v, 2400ps 0v, 2500ps 0v, 2600ps 1.8v, 2700ps 1.8v, 2800ps 0v, 2900ps 0v)
Vc	c	gnd	PWL(0ps 0v, 100ps 0v, 200ps 1.8v, 300ps 1.8v, 400ps 0v, 900ps 0v, 1000ps 1.8v, 1100ps 1.8v, 1200ps 0v, 1700ps 0v, 1800ps 1.8v, 1900ps 1.8v, 2000ps 0v, 2500ps 0v, 2600ps 1.8v, 2700ps 1.8v, 2800ps 0v, 2900ps 0v)
*----------CIRCUIT-------------

*PULLUP*
MMPa 	n2	a	vdd	vdd	p105_HVT	l=0.03u w=1.62u
MMPb	n1	b	n2	vdd	p105_HVT	l=0.03u w=1.62u
MMPc	Y	c	n1	vdd	p105_HVT	l=0.03u w=1.62u

*PULLDOWN*
MMNa	Y	a	gnd	gnd	n105_HVT	l=0.03u w=0.27u
MMNb	Y	b	gnd	gnd	n105_HVT	l=0.03u w=0.27u
MMNc	Y	c	gnd	gnd	n105_HVT	l=0.03u w=0.27u

*-------------------------------


*------------------STIMULUS-----------------
* write stimulus with .measure, measuring the falling time (time it takes for the inputs to rise to Vdd/2 and the output to fall to Vdd/2),
* and the rising time (time it takes for the inputs to fall to Vdd/2 and the output to rise to Vdd/2
* Vdd/2 = 0.9

.tran 1ps 2.8ns

*Each measurement block will measure output falling/rising time as the
* input signals changes to XXX to 000
* NOTE: for signal combinations with multiple signals changing, it only matters to measure one of the input
* delay, since inputs rise and fall at the same time.

*------------BLOCK 1: 001----------------------
.measure TRAN bl_001_falling
+	TRIG V(c) VAL=0.9 RISE=1  TARG V(Y) VAL=0.9 FALL=1

.measure TRAN bl_001_rising
+	TRIG V(c) VAL=0.9 FALL=1  TARG V(Y) VAL=0.9 RISE=1
*----------------------------------------------

*------------BLOCK 2: 010----------------------
.measure TRAN bl_010_falling
+	TRIG V(b) VAL=0.9 RISE=1 TD=400p  TARG V(Y) VAL=0.9 FALL=1 TD=400p

.measure TRAN bl_010_rising
+	TRIG V(b) VAL=0.9 FALL=1 TD=400p  TARG V(Y) VAL=0.9 RISE=1 TD=400p
*----------------------------------------------

*------------BLOCK 3: 011----------------------
.measure TRAN bl_011_falling
+	TRIG V(b) VAL=0.9 RISE=1 TD=800p  TARG V(Y) VAL=0.9 FALL=1 TD=800p

.measure TRAN bl_011_rising
+	TRIG V(b) VAL=0.9 FALL=1 TD=800p  TARG V(Y) VAL=0.9 RISE=1 TD=800p
*----------------------------------------------

*------------BLOCK 4: 100----------------------
.measure TRAN bl_100_falling
+	TRIG V(a) VAL=0.9 RISE=1 TD=1200p  TARG V(Y) VAL=0.9 FALL=1 TD=1200p

.measure TRAN bl_100_rising
+	TRIG V(a) VAL=0.9 FALL=1 TD=1200p  TARG V(Y) VAL=0.9 RISE=1 TD=1200p
*----------------------------------------------

*------------BLOCK 5: 101----------------------
.measure TRAN bl_101_falling
+	TRIG V(a) VAL=0.9 RISE=1 TD=1600p  TARG V(Y) VAL=0.9 FALL=1 TD=1600p

.measure TRAN bl_101_rising
+	TRIG V(a) VAL=0.9 FALL=1 TD=1600p  TARG V(Y) VAL=0.9 RISE=1 TD=1600p
*----------------------------------------------

*------------BLOCK 6: 110----------------------
.measure TRAN bl_110_falling
+	TRIG V(a) VAL=0.9 RISE=1 TD=2000p  TARG V(Y) VAL=0.9 FALL=1 TD=2000p

.measure TRAN bl_110_rising
+	TRIG V(a) VAL=0.9 FALL=1 TD=2000p  TARG V(Y) VAL=0.9 RISE=1 TD=2000p
*----------------------------------------------

*------------BLOCK 7: 111----------------------
.measure TRAN bl_111_falling
+	TRIG V(a) VAL=0.9 RISE=1 TD=2400p  TARG V(Y) VAL=0.9 FALL=1 TD=2400p

.measure TRAN bl_111_rising
+	TRIG V(a) VAL=0.9 FALL=1 TD=2400p  TARG V(Y) VAL=0.9 RISE=1 TD=2400p
*----------------------------------------------

.end
