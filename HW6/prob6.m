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
H0 = interp1([.85,.90],[int1,int2],Tr)
int3 = interp1([.1,.2],[-.183,-.400],Pr,"extrap")
int4 = interp1([.2,.4],[-.301,-.744],Pr,"extrap")
H1 = interp1([.85,.9],[int3,int4],Tr)
Hr = H0*R*Tc + H1*R*Tc*w
%Finding Hr
int1 = interp1([.1,.2],[.9436,.8810],Pr,"extrap")
int2 = interp1([.2,.4],[.9015,.7800],Pr,"extrap")
S0 = interp1([.85,.90],[int1,int2],Tr)
int3 = interp1([.1,.2],[-.0319,-.0715],Pr,"extrap")
int4 = interp1([.2,.4],[-.0442,-.1118],Pr,"extrap")
S1 = interp1([.85,.9],[int3,int4],Tr)
Sr = S0*R + S1*R*w














