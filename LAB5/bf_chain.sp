*** bf_chain.sp
* Author: Mohammed Akinbayo
.option macmod=3
.lib '../../saed32nm.lib' TT
.temp 70
.option post

.param VDD=1.8

*--------SUBCIRCUIT----------
.global vdd gnd
.include 'lib/inv.sp'
*---------------------------

*-----------SOURCES---------
Vdd 	vdd	gnd	'VDD'
Vgnd	gnd	0	0v

Vin	i	gnd	PWL(0ps 0V, 100ps 0V, 101ps 'VDD', 200ps 'VDD', 201ps 0V, 300ps 0v)

*----------CIRCUIT----------
*	inp	outp	name	scale(inv*M parallel)
Xinv1	i	n1	INV
Xload	n1	Y	INV	M=4

*----------ANALYSIS---------
.tran 1ps 200ps

* delay measurements
.measure TRAN st_1_rising
+	TRIG V(i) VAL="VDD/2" RISE=1 	TARG V(Y) VAL="VDD/2" RISE=1 
.measure TRAN st_1_falling
+	TRIG V(i) VAL="VDD/2" FALL=1	TARG V(Y) VAL="VDD/2" FALL=1

* energy measurements
.measure TRAN avg_pwr AVG PAR('i(Vdd) * V(vdd)') from=0ps to=300ps
*--------------2 STAGE ALTER------------

*--------------3 STAGE ALTER------------


*-------------4 STAGE ALTER-------------


*-------------5 STAGE ALTER------------- 


.end
