%Problem 4 
%John Moosemiller
%Mar 9 2015

%Constants
R = 8.314
Cp = 7/2*R
Cv = Cp-R
y = Cp/Cv

%Knowns
T1 = 25+273.15%convert C to K
P1 = 5%Bar
%n1 = n2c + n2w

%exit Stream (cool)
P2c = 1
T2c = -25+273.15%convert C to K
%n2c = ?

%exit stream (warm)
P2w = 1
T2w = 75+273.15%convert C to K
%n2w = ?

%Adiabatic Q = 0
%Ratio of Cold-Warm air
%dU = Q+W
%dU = dW
%dU - dW = 0
%CvdT - PdV = 0
%Cv*(n2c*(T2c-T1)+n2w*(T2w-T1)) - (n2c*((R*T2c-R*T1)/(1-y))+n2w*((R*T2w-R*T1)/(1-y))) = 0









