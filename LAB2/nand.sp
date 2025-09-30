*nand.sp
* Author: Mohammed Akinbayo
.option macmod=3

.lib '../../saed32nm.lib' TT
.temp 70
.option post

*--------CIRCUIT--------

*PULLUP*
MPb	Y	b	vdd	vdd	p105_HVT	l=? w=?
MPa	Y	a	vdd	vdd	p105_HVT	l=? w=?		 

*PULLDOWN*
MNb	Y	b	gnd	gnd	n105_HVT	l=? w=?
MNa	Y	a	gnd	gnd	n105_HVT	l=? w=?

*--------SOURCES--------
*Rails
Vvdd 	vdd 	0 	1.8v
Vgnd 	gnd	0	0v

*inputs (A,B)
*NOTE: instead of 0v, do piece-wise linear (PWL)
Va	a	0	0v
Vb	b	0	0v

*------------------------

.end
