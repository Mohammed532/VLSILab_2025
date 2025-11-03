*** bf_chain.sp
* Author: Mohammed Akinbayo
.option macmod=3
.lib '../..saed32nm.lib' TT
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

Vin	i	gnd	PWL(0ps 0V, 100ps 0V, 110ps 'VDD', 120ps 0V, 200ps 0V)

*----------CIRCUIT----------
*	inp	outp	name	scale(inv*M parallel)
Xinv1	i	n1	INV
Xload	n1	Y	INV	M=4

*----------ANALYSIS---------
.tran 1ps 200ps


