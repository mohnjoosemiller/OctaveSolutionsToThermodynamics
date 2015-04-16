%Problem 2
%John Moosemiller
%5/15/15

%water - throttle from 5atm to 1 atm - 288K - surroundings 293K
%dT of water? Lost work?

T1 = 288
P1 = 5
P2 = 1
B = .00015
dP = P2-P1
Tsurr = 293
%Find value of Cp near this T
%Steam tables yield
H16 = 67.13
H14 = 58.75
dH = H16-H14
dT = 16-14
Cp = dH/dT
%Find specific volume around this T
V = 1.001
%dH = CpdT +V(1-BT)dP
%dH is 0 sooooo solving for dT and adjusting for units we find
dTans = (-V*(1-B*T1)*dP/Cp)/9.87
T2 = T1+dTans
dS = Cp*log(T2/T1)-B*V*dP

Wlost = Tsurr*dS



