%Problem 1

A=13.7819;
B=2726.81;
C=217.572 %From B.2
t=80;
tk=t+273.15;
R = 8.314 * 10^3;
P=exp(A-(B/(t+C)));
OMG=.21;
Pr=P/48.98/100;
Tr=.628157;
Zc=.271;
Vc=259;
%find z0
trv1=interp1([.6,.65],[.9849,.9881],Tr);
trv2=interp1([.6,.65],[.0093,.9377],Tr);
zO=interp1([.01,.05],[trv1,trv2],Pr);
trz1=interp1([.6,.65],[-.0205,-.0137],Tr);
trz2=interp1([.6,.65],[-.0041,-.0772],Tr);
zI=(interp1([.01,.05],[trz1,trz2],Pr));
Z=zO+ OMG*zI;
%PV/RT=Z
%Vg = ZRT/P
Vg = Z*R*tk/P;
Vl = Vc*Zc^((1-Tr)^(2/7));

dV = Vg - Vl;

dPsat = exp(A-(B)/(t+C))*((B)/(t+C)^2);

dH = dPsat*dV*(tk)/1000000