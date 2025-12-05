.option macmod=3
.option post

.subckt NAND    a       b       y       vdd     gnd     N=1     P=1
MMN1    y       a       x       gnd     n105_HVT        l=0.03u w='0.54u*N'
MNN2    x       b       gnd     gnd     n105_HVT        l=0.03u w='0.54u*N'
MMP1    y       a       vdd     vdd     p105_HVT        l=0.03u w='0.54u*P'
MMP2    y       b       vdd     vdd     p105_HVT        l=0.03u w='0.54u*P'
.ends

