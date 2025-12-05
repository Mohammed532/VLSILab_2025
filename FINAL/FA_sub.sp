.include '../NAND/NAND.sp'
.subckt adder a b cin sum cout vdd gnd N=1 P=1
X1     a  b   n1  vdd gnd NAND N='N' P='P'
X2     a  n1  n2  vdd gnd NAND N='N' P='P'
X3     b  n1  n3  vdd gnd NAND N='N' P='P'
X4     n2 n3  n4  vdd gnd NAND N='N' P='P'

X5    n4  cin n5  vdd gnd NAND N='N' P='P'
X6    n4  n5  n6  vdd gnd NAND N='N' P='P'
X7    cin n5  n7  vdd gnd NAND N='N' P='P'
X8    n6  n7 sum  vdd gnd NAND N='N' P='P'

X9 n1 n5 cout vdd gnd NAND N='N' P='P'
.ends adder
