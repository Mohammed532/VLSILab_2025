*** nor3.sp
* Author: Mohammed Akinbayo, mohammed.akinbayo@bison.howard.edu
* finds delay of 3 input nor gate with proper sizing
**********************************************************

.option macmod=3
.lib '../../saed32nm.lib' TT
.temp 70
.option post

*----------SOURCES------------

Vdd vdd 0 1.8v
Vgnd gnd 0 0v

*INPUTS*
Va	a	gnd	PWL(0ps 0v, 1100ps 0v, 1200ps 1.8v, 1300ps 1.8v, 1400ps 0v, 1500ps 0v, 1600ps 1.8v, 1700ps 1.8v, 1800ps 0v, 1900ps 0v, 2000ps 1.8v, 2100ps 1.8v, 2200ps 0v, 2300ps 0v, 2400ps 1.8v, 2500ps 1.8v, 2600ps 0v, 2700ps 0v) 
Vb	b	gnd	PWL(0ps 0v, 300ps 0v, 400ps 1.8v, 500ps 1.8v, 600ps 0v, 700ps 0v, 800ps 1.8v, 900ps 1.8v, 1000ps 0v, 1900ps 0v, 2000ps 1.8v, 2100ps 1.8v, 2200ps 0v, 2300ps 0v, 2400ps 1.8v, 2500ps 1.8v, 2600ps 0v, 2700ps 0v)
Vc	c	gnd	PWL(0ps 0v, 100ps 0v, 200ps 1.8v, 300ps 1.8v, 400ps 0v, 700ps 0v, 800ps 1.8v, 900ps 1.8v, 1000ps 0v, 1500ps 0v, 1600ps 1.8v, 1700ps 1.8v, 1800ps 0v, 2300ps 0v, 2400ps 1.8v, 2500ps 1.8v, 2600ps 0v, 2700ps 0v)
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


*------------------STIMULUS-----------------
* write stimulus with .measure, measuring the falling time (time it takes for the inputs to rise to Vdd/2 and the output to fall to Vdd/2),
* and the rising time (time it takes for the inputs to fall to Vdd/2 and the output to rise to Vdd/2

.tran 1ps 2600ps

* INPUT 001


