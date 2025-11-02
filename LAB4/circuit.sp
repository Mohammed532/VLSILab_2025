*** circuit.sp
* Author: Mohammed Akinbayo
.option macmod=3

.lib '../../saed32nm.lib' TT
.temp 70
.option post

.param VDD=1.8

*---------SUBCIRCUITS-----------
.global vdd gnd
.include 'lib/nand2.sp'
.include 'lib/nor2.sp'

*---------SOURCES---------------
Vdd 	vdd 	gnd 	'VDD'
Vgnd	gnd	0	0v 

Va a gnd	PWL(0ps 0V, 850ps 0V, 900ps 1.8V, 1000ps 1.8V, 1050ps 0V, 1150ps 0V, 1200ps 1.8V, 1300ps 1.8V, 1350ps 0V, 1450ps 0V, 1500ps 1.8V, 1600ps 1.8V, 1650ps 0V, 1750ps 0V, 1800ps 1.8V, 1900ps 1.8V, 1950ps 0V, 2050ps 0V)
Vb b gnd PWL(0ps 0V, 250ps 0V, 300ps 1.8V, 400ps 1.8V, 450ps 0V, 550ps 0V, 600ps 1.8V, 700ps 1.8V, 750ps 0V, 1450ps 0V, 1500ps 1.8V, 1600ps 1.8V, 1650ps 0V, 1750ps 0V, 1800ps 1.8V, 1900ps 1.8V, 1950ps 0V, 2050ps 0V)
Vc c gnd PWL(0ps 0V, 100ps 0V, 150ps 1.8V, 250ps 1.8V, 300ps 0V, 400ps 0V, 450ps 1.8V, 850ps 1.8V, 900ps 0V, 1000ps 0V, 1050ps 1.8V, 1450ps 1.8V, 1500ps 0V, 1600ps 0V, 1650ps 1.8V, 2050ps 1.8V)

*-----------CIRCUIT-------------
X1	a	b	n1	NOR2
X2	n1	c	Y	NAND2
*-------------------------------

.tran 1ps 2.05ns

* Measuring falling and rising times as input changes to/from XXX/001
*NOTE: messed up PWL gen, got no rising time for 000

*----------------BLOCK1: 000-------------------
.measure TRAN b_000_falling
+	TRIG V(c) VAL="VDD/2" RISE=1  TARG V(Y) VAL="VDD/2" FALL=1 
*----------------------------------------------

*---------------BLOCK2: 010-------------------
.measure TRAN b_010_rising
+	TRIG V(c) VAL="VDD/2" FALL=1 TD=200ps  TARG V(Y) VAL="VDD/2" RISE=1  TD=200ps 

.measure TRAN b_010_falling
+	TRIG V(c) VAL="VDD/2" RISE=1 TD=200ps  TARG V(Y) VAL="VDD/2" FALL=1  TD=200ps 
.measure TRAN f12_max PARAM='max(b_000_falling, b_010_falling) '
.measure TRAN f12_min PARAM='min(b_000_falling, b_010_falling) '
*---------------------------------------------

*---------------BLOCK3: 011-------------------
.measure TRAN b_011_rising
+	TRIG V(b) VAL="VDD/2" RISE=1 TD=500ps  TARG V(Y) VAL="VDD/2" RISE=1  TD=500ps 
.measure TRAN r23_max PARAM='max(b_010_rising, b_011_rising) '
.measure TRAN r23_min PARAM='min(b_010_rising, b_011_rising) '

.measure TRAN b_011_falling
+	TRIG V(b) VAL="VDD/2" FALL=1 TD=500ps  TARG V(Y) VAL="VDD/2" FALL=1  TD=500ps 
.measure TRAN f23_max PARAM='max(f12_max, b_011_falling) '
.measure TRAN f23_min PARAM='min(f12_min, b_011_falling) '
*---------------------------------------------

*---------------BLOCK4: 100-------------------
.measure TRAN b_100_rising
+	TRIG V(a) VAL="VDD/2" RISE=1 TD=800ps  TARG V(Y) VAL="VDD/2" RISE=1  TD=800ps 
.measure TRAN r34_max PARAM='max(r23_max, b_100_rising) '
.measure TRAN r34_min PARAM='min(r23_min, b_100_rising) '

.measure TRAN b_100_falling
+	TRIG V(a) VAL="VDD/2" FALL=1 TD=800ps  TARG V(Y) VAL="VDD/2" FALL=1  TD=800ps 
.measure TRAN f34_max PARAM='max(f23_max, b_100_falling) '
.measure TRAN f34_min PARAM='min(f23_min, b_100_falling) '
*---------------------------------------------

*---------------BLOCK5: 101-------------------
.measure TRAN b_101_rising
+	TRIG V(a) VAL="VDD/2" RISE=1 TD=1.1ns  TARG V(Y) VAL="VDD/2" RISE=1  TD=1.1ns 
.measure TRAN r45_max PARAM='max(r34_max, b_101_rising) '
.measure TRAN r45_min PARAM='min(r34_min, b_101_rising) '

.measure TRAN b_101_falling
+	TRIG V(a) VAL="VDD/2" FALL=1 TD=1.1ns  TARG V(Y) VAL="VDD/2" FALL=1  TD=1.1ns 
.measure TRAN f45_max PARAM='max(f34_max, b_101_falling) '
.measure TRAN f45_min PARAM='min(f34_min, b_101_falling) '
*---------------------------------------------

*---------------BLOCK6: 110-------------------
.measure TRAN b_110_rising
+	TRIG V(a) VAL="VDD/2" RISE=1 TD=1.4ns  TARG V(Y) VAL="VDD/2" RISE=1  TD=1.4ns 
.measure TRAN r56_max PARAM='max(r45_max, b_110_rising) '
.measure TRAN r56_min PARAM='min(r45_min, b_110_rising) '

.measure TRAN b_110_falling
+	TRIG V(a) VAL="VDD/2" FALL=1 TD=1.4ns  TARG V(Y) VAL="VDD/2" FALL=1  TD=1.4ns 
.measure TRAN f56_max PARAM='max(f45_max, b_110_falling) '
.measure TRAN f56_min PARAM='min(f45_min, b_110_falling) '
*---------------------------------------------

*---------------BLOCK7: 111-------------------
.measure TRAN b_111_rising
+	TRIG V(a) VAL="VDD/2" RISE=1 TD=1.7ns  TARG V(Y) VAL="VDD/2" RISE=1  TD=1.7ns 
.measure TRAN MAX_RISING PARAM='max(r56_max, b_111_rising) '
.measure TRAN MIN_RISING PARAM='min(r56_min, b_111_rising) '

.measure TRAN b_111_falling
+	TRIG V(a) VAL="VDD/2" FALL=1 TD=1.7ns  TARG V(Y) VAL="VDD/2" FALL=1  TD=1.7ns 
.measure TRAN MAX_FALLING PARAM='max(f56_max, b_111_falling) '
.measure TRAN MIN_FALLING PARAM='min(f56_min, b_111_falling) '
*---------------------------------------------

.measure TRAN MAX_PW MAX PAR('i(Vdd) * V(vdd)') from=0ps to=2ns 
.end

