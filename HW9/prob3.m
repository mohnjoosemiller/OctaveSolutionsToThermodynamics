%Problem 3
%John Moosemiller
%May the Fourth is when I'm getting this HW DUN
%8.12

H2 = 105.9
S2 = .2233
H2a = 116.0
S2a = .2435
H4 = 37.98
S4 = .07892
H1 = H4-H2a+H2
QC = 2000%Btu/SECOND
mdot = QC/(H2-H1)
%Constant Entropy
H31 = 127
n = .75
dHcomp1 = (H31-H2a)/n
Wrate = mdot*dHcomp1
%no heat exchanger
mdot = QC/(H2-H4)
H32 = 116
dHcomp2=(H32-H2)/n
Wrate = dHcomp2*mdot
%yields
%mdot =  25.634
%H31 =  127
%n =  0.75000
%dHcomp1 =  14.667
%Wrate =  375.97
%mdot =  29.446
%H32 =  116
%dHcomp2 =  13.467
%Wrate =  396.54
%with units of BTU







