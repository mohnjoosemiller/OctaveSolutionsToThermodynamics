%Problem 3
%John Moosemiller
%5/15/15

%Boiler Sat Steam 1200kPa - boiled via exh gas
%ex gas - 400C 1 Bar 125mol/s 
%water enters boiler 293K(Tsurr) 
%ex gas cooled to 10deg of the steam T
%Cp = 3.34+1.12*10^-3*T
%turbine 72% efficient - exit at 25kPa

%Find power output
%Thermodynamic Efficiency
%Calc Sg

%Steam Tables find steam at 1200kPa
H1200 = 2782.7
S1200 = 6.5194
%Tsat = 187.96

%Water at 293K
H293 = 83.86
S293 = .2963

%turbine exit stream - wet steam - VERY close to vals at 65C
HExliq = 272
HEvap = 2346.3
SExliq = .8933
SEvap = 6.9388
n = .72

%Assume isentropic turbine
Sexhaust = S1200
xSvap = (Sexhaust-SExliq)/SEvap
Hexhaust = HExliq+xSvap*HEvap

%encorp efficiency
dH = n*(Hexhaust-H1200)
Hnew = H1200+dH

%find Ratio liq/vap
xnew = (Hnew-HExliq)/HEvap
Snew = SExliq+xnew*SEvap

%Flow rates and Temps of gases
Teng = 673.15
Tengf = 187.96+10+273.15
nflow = 125
MW = .018
Tsurr = 293.15

dHgas = 8.314*ICPH(Teng, Tengf, 3.34, 1.12*10^-3,0,0)
dSgas = 8.314*ICPS(Teng,Tengf,3.34,1.12*10^-3,0,0)

mflow = -(nflow*dHgas)/(H1200 - H293)

WorkRate = mflow*(Hnew - H1200)

Wideal = nflow*dHgas+mflow*(Hnew-H293)-Tsurr*(nflow*dSgas+mflow*(Snew-S293))

neff = WorkRate/Wideal

SgBoil = nflow*(dSgas)+mflow*(S1200-S293)
SgTurb = mflow*(Snew-S1200)
%ANSWERS IN TERMS OF WATTS not KWs where applicable
%WorkRate =   -1.3564e+05
%Wideal =   -3.1429e+05
%neff =  0.43158
%SgBoil =  453.41
%SgTurb =  156.00










