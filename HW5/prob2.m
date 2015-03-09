%problem 2 
%John Moosemiller
%Mar 8 2015

%Part i
V = .06;
%ideal gas
T0 = 500;
P0 = 1;%BAR
R = 8.314;
Cv = R*5/2;
Cp = Cv - R;
%%Entropy change if 15000 J HEAT transfered to the gas

%dS = Cp*ln(T/T0)-R*ln(P/P0)
%PV = nRT

n = (P0*100000*.06)/(R*T0);
%Q = dU = nCvdT
%15000 = nCvdT
dQ = 15000;
Tf = (dQ + n*Cv*T0)/(n*Cv);
%Pf = (n*R*Tf)/V Figured out this was unnecessary because of P2/P1 = T2/T1

dS1 = n*Cv*log(Tf/T0)

%PART ii
%15000J of shaft work applied
%d(nU) = dQ +dW
%dQ = 0, dU = dW= Ws = 15000J
Ws = 15000;
dU = Ws;
Tf2 = (dU + n*Cv*T0)/(n*Cv)
%dS should be the same...
dS2 = n*Cv*log(Tf2/T0)
















