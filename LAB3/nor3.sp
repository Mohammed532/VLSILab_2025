*** nor.sp
* Author: Mohammed Akinbayo
.option macmod=3

.lib '../../saed32nm.lib' TT
.temp 70
.option post

*----------SOURCES------------

Vdd vdd 0 1.8v
Vgnd gnd 0 0v

*INPUTS*
Va	a	gnd	PWL(0ps 0v, 1100ps 0v, 1200ps 1.8v, 1300ps 1.8v, 1400ps 0v, 1500ps 0v, 1600ps 1.8v, 1700ps 1.8v, 1800ps 0v, 1900ps 0v, 2000ps 1.8v, 2100ps 1.8v, 2200ps 0v, 2300ps 0v, 2400ps 1.8v, 2500ps 1.8v, 2600ps 0v) 
Vb	b	gnd	PWL(look at notebook for times)
Vc	c	gnd	PULSE xxx
*----------CIRCUIT-------------

*PULLUP*
MMPa 	n2	a	vdd	vdd	p105_HVT	l=0.03u w=3.24u
MMPb	n1	b	n2	vdd	p105_HVT	l=0.03u w=3.24u
MMPc	Y	c	n1	vdd	p105_HVT	l=0.03u w=3.24u

*PULLDOWN*
MMNa	Y	a	gnd	gnd	n105_HVT	l=0.03u w=0.27u
MMNb	Y	b	gnd	gnd	n105_HVT	l=0.03u w=0.27u
MMNc	Y	c	gnd	gnd	n105_HVT	l=0.03u w=0.27u

*-------------------------------

.tran 1ps 2600ps



