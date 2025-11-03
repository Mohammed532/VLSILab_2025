*** inv.sp (subcircuit)
* Author: Mohammed Akinbayo

.param ML=0.03u MW=0.27u

*-----------SUBCIRCUITS----------------
*	name	input	output	NMSize	PMSize
.subckt INV	a	Y	N=1	P=2

*PULLUP*
MP	Y	a	vdd	vdd	p105_HVT	l=ML	w='P*MW'

*PULLDOWN*
MN	Y	a	gnd	gnd	n105_HVT	l=ML	w='N*MW'

.ends INV
