%Problem 6
%John Moosemiller
%Mar 29 2015

%n-butane either liquid or vapor
%estimate V, H, and S at T = 370K
%assume Pvap of n-butane is 1919.4kPa
%Givens:
T = 370%K
P = 1919.4%Kpa
%From Table B1
Tc = 425.1
Pc = 37.96%Bar
Pcbar = Pc
Pc = Pc*100%convert to kPa
w = .200
Zc = .274
Vc = 255%cm^3/mol
T0 = 273.15
P0 = 101.33
Tr = T/Tc
Pr = P/Pc
%Run code at this point to find Tr and Pr
%Tr =  0.87038
%Pr =  0.50564
%Use this to find Z0 and Z1 from Lee/Kessler correlation
int1 = interp1([.1,.2],[.9436,.8810],Pr,"extrap")
int2 = interp1([.2,.4],[.9015,.7800],Pr,"extrap")
Z0 = interp1([.85,.90],[int1,int2],Tr)
int3 = interp1([.1,.2],[-.0319,-.0715],Pr,"extrap")
int4 = interp1([.2,.4],[-.0442,-.1118],Pr,"extrap")
Z1 = interp1([.85,.9],[int3,int4],Tr)
%use Z0 and Z1 to calc Z
Z = Z0+w*Z1
Vvap = Z*(8.314*10^3)*T/P
R = 8.314
%Finding Sr
int1 = interp1([.1,.2],[-.111,-.239],Pr,"extrap")
int2 = interp1([.2,.4],[-.199,-.463],Pr,"extrap")
S0 = interp1([.85,.90],[int1,int2],Tr)
int3 = interp1([.1,.2],[-.183,-.400],Pr,"extrap")
int4 = interp1([.2,.4],[-.301,-.744],Pr,"extrap")
S1 = interp1([.85,.9],[int3,int4],Tr)
Sr = S0*R + S1*R*w
%Finding Hr
int1 = interp1([.1,.2],[-.141,-.3],Pr,"extrap")
int2 = interp1([.2,.4],[-.264,-.596],Pr,"extrap")
H0 = interp1([.85,.90],[int1,int2],Tr)
int3 = interp1([.1,.2],[-.182,-.401],Pr,"extrap")
int4 = interp1([.2,.4],[-.308,-.751],Pr,"extrap")
H1 = interp1([.85,.9],[int3,int4],Tr)
Hr = H0*R*Tc + H1*R*w*Tc
%Finding Hvap
Hvap = R*ICPH(T0,T,1.935,36.95*10^-3,-11.402*10^-6,0) + Hr
%finding Svap
Svap = R*(ICPS(T0,T,1.935,36.95*10^-3,-11.402*10^-6,0) -log(P/P0)) + Sr
%finding Vliq
Vliq = Vc*Zc^((1-Tr)^(2/7))
%Hliq = Hvap - dHvaporization
Tn = 272.7
dHvapn = R*Tn*((1.092*(log(37.96)-1.013))/(.93-(Tn/Tc)))
dHvap = dHvapn*((1-Tr)/(1-(Tn/Tc)))^.38
Hliq = Hvap - dHvap
%similarly, Sliq = Svap-dHvap/T
Sliq = Svap - dHvap/T
%Yields ->
%Vvap =  1066.6
%Hvap =  6680.4
%Svap =  0.37214
%Vliq =  123.86
%Hliq = -8614.8
%Sliq = -40.966









