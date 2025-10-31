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

.ends

