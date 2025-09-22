*alt.sp
* Mohammed Akinbayo

.option macmod=3
.include '../../saed32nm_hvt.spf'
.lib '../../saed32nm.lib' TT
.temp 70
.option post

R1	1	2 	1k
R2 	2 	0	2k
C1	2	0	1n

.ac dec 10 200 1000meg
vin 	1	0	ac 1

print i(C1)

.alter 	1 2 10k
R1	1	2	10k
Cl	2	0	100p
.print i(C1) 

.end
