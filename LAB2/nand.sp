*nand.sp
* Author: Mohammed Akinbayo
.option macmod=3

.lib '../../saed32nm.lib' TT
.temp 70
.option post

*--------CIRCUIT--------

*PULLUP*
MNPb	Y	b	vdd	vdd	p105_HVT	l=0.03u w=0.54u
MNPa	Y	a	vdd	vdd	p105_HVT	l=0.03u w=0.54u		 

*PULLDOWN*
MNb	Y	b	gnd	gnd	n105_HVT	l=0.03u w=0.54u
MNa	Y	a	gnd	gnd	n105_HVT	l=0.03u w=0.54u

*--------SOURCES--------
*Rails
Vvdd 	vdd 	0 	1.8v
Vgnd 	gnd	0	0v

*inputs (A,B)
Va	a	gnd	PULSE 0 1.8 100ps 100ps 100ps 300ps 900ps
Vb	b	gnd	PULSE 0 1.8 300ps 100ps 100ps 300ps 900ps

*------------------------

.tran 0.1ps 900ps
.print v(a) v(b) v(out)

.end
