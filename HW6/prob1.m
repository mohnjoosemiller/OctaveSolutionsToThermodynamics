%Problem 1
%John Moosemiller
%Mar 29 2015

%Closed Vessel - Sat Steam - 503.15K - density = .025

%Calc -> Mole Fraction liquid, Enthalpy, and Entropy

%Steam Table Values
Vliq = 1.209;
Vvap = 71.45;
Hliq = 990.3;
Hvap = 2802;
Sliq = 2.6102;
Svap = 6.2107;
%Givens
p = .025; %g/cm=kg/L
V = 1/p; %volume of one Liter
%V = x*Vliq + (1-x)*Vvap
%V - Vvap = x*Vliq - x*Vvap
%solving for x ->
x = (V-Vvap)/(Vliq-Vvap)
%substitute x to find H
H = x*Hliq + (1-x)*Hvap
%substitute x to find S 
S = x*Sliq + (1-x)*Svap
%This yeilds these results
%x =  0.44774
%H =  1990.8
%S =  4.5986



