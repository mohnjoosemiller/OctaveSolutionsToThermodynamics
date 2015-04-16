%Problem 4
%John Moosemiller
%4/15/15

%From Ex 7.9
T1 = 293.15
T2 = 428.65
P1 = 140
P2 = 560
Work = 5288.3
Tsurr = 293.15
dH = 8.314*ICPH(T1,T2,1.702,9.081*10^-3,-2.164*10^-6,0)
dS = 8.314*(ICPS(T1,T2,1.702,9.081*10^-3,-2.164*10^-6,0)-log(P2/P1))
%under adiabatic conditions
Wideal = dH - Tsurr*dS
n = Wideal/Work
Sg = dS
Wlost = Tsurr*dS


























