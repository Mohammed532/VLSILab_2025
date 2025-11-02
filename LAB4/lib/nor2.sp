*** nor2.sp (subcircuit)
* Author: Mohammed Akinbayo
.option macmod = 3
.temp 70
.option post

.param ML=0.03u MW=0.27u

*------------SUBCIRCUIT-------------
* 	name	input1	input2	output	NMSize	PMSize
.subckt NOR2	a	b	Y	N=1	P=4

*PULLUP*
MPa	n1	a	vdd	vdd	p105_HVT	l=ML	w='P*MW'
MPb	Y	b	n1	vdd	p105_HVT	l=ML	w='P*MW'

*PULLDOWN*
MNa	Y	a	gnd	gnd	n105_HVT	l=ML	w='N*MW'
MNb	Y	b	gnd	gnd	n105_HVT	l=ML	w='N*MW'
.ends NOR2
