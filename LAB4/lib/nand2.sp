*** nand2.sp (subcircuit)
* Author: Mohammed Akinbayo
.option macmod = 3
.temp 70
.option post

.param ML=0.03u MW=0.27u

*------------SUBCIRCUIT-------------
* 	name	input1	input2	output	NMSize	PMSize
.subckt NAND2	a	b	Y	N=2	P=2

*PULLUP*
MPa	Y	a	vdd	vdd	p105_HVT	l=ML	w='P*MW'
MPb	Y	b	vdd	vdd	p105_HVT	l=ML	w='P*MW'

*PULLDOWN*
MNa	Y	a	n1	gnd	n105_HVT	l=ML	w='N*MW'
MNb	n1	b	gnd	gnd	n105_HVT	l=ML	w='N*MW'
.ends NAND2
