%Problem 2
%Ethylbenzene @ 25degC
Pc = 36.06
Tr1 = 409.4/617.2
R = 8.314 
Tn1 = 409.4
Tr2 = 298.15/617.2
dHfg = 29920


dH1 = (1.092*(log(Pc) - 1.013)/(.930-Tr1))*R*Tn1
dH2 = ((1-Tr2)/(1-Tr1))^(.38)*(dH1)

dHf = dHfg - dH2

