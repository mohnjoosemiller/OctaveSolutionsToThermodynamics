%Problem 1
%John Moosemiller
%4/15/15

%Nozzle - Adiabatic - Steam - 420F - 130 psia - 230 ft/s of flow
%exits at 35psia - 2000ft/s flow rate
%state of steam, and Sg?
v1 = 230
v2 = 2000

%Superheated tables yeild
H1 = 1233.6
S1 = 1.6310
%dH = (V1^2 - V2^2)/2
%convert ft^2/s^2 to BTU/lbm /25037
dH = ((v1^2 - v2^2)/2)/25037
H2 = H1+dH
%Superheated Tables yeild the conclusion that we are outputting wet steam
Hliq = 228.03
Hvap = 1167.1
Sliq = .3809
Svap = 1.6872
%male fraction vapor = (H2-Hliq)/(Hvap-Hliq)
xVap = (H2-Hliq)/(Hvap-Hliq)

S2 = Sliq + xVap*(Svap-Sliq)

dS = S2-S1
%yields
%dS =  0.039055
