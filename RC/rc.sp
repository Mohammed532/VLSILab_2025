*rc.sp
* Mohammed Akinbayo
* find the response of RC circuit to rising input

.option macmode=3
.include '../../saed32nm_hvt.spf'
.lib '../../saed32nm.lib' TT
.temp 70
*__________________________________________________
* Parameters and models
*__________________________________________________

.option post
.option list
.option node
.param sc1=1
*__________________________________________________
* Simulation netlist
*__________________________________________________

Vin	in	gnd	pw1 0ps 0 100ps 0 150ps 1.0 1ns 1.0
R1	in	out	'scl*2k'
C1 	out	gnd	100f scale=1

.tran 20ps 1ns
.plot v(in) v(out)
.print i(R1) i(Cl)

.end
