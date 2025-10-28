*** circuit.sp
* Author: Mohammed Akinbayo
.option macmod=3

.lib '../../saed32nm.lib' TT
.temp 70
.option post

.param VDD=1.8

*---------SUBCIRCUITS-----------
.global vdd gnd
.include '/lib/nand2.sp'
.include 'lib/nor2.sp'

*---------SOURCES---------------
Vdd 	vdd 	gnd 	'VDD'
Vgnd	gnd	0	0v 
*-----------CIRCUIT-------------
X1	a	b	n1	NOR2
X2	n1	c	F	NAND2

.ends

