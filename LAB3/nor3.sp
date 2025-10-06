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
Va	a	gnd	PULSE xxx
Vb	b	gnd	PULSE xxx
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




