* nmos.sp
*Athor: Mohammed Akinbayo
.option macmod=3

.lib '../../saed32nm.lib' TT
.temp 70
.option post

*---CICUIT COMPONENTS--- 
Vgs 	g 	gnd 	0
Vds 	d 	gnd 	0
MMN 	d 	g 	gnd 	gnd 	n105_HVT 	l=0.03u w=0.27u

*---SOURCES---
Vvdd 	vdd 	0 	1.8v
Vgnd 	gnd 	0 	0v

.dc 	Vds 	0 	1.8 	0.05 	SWEEP	Vgs 0 1.8 0.2

.prob dc i(*)
.print i(*)
.end
