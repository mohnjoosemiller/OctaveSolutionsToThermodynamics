%Problem 3
%John Moosemiller
%Mar 29 2015

%Water pumped from a tank
%Find the Energy transfered to keep constant T
%Givens
V = 2%m^3
xvap = .1
%Data from Superheated steam tables at 3000kPa and Saturated
Vliq = 1.216
Vvap = 66.626
Hliq = 1008.4
Hvap = 2802.3
%Find avg Specificc Vol of the solution
Vs = Vliq + xvap*(Vvap - Vliq)
Vs = Vs/1000 %to yield m^3/kg
%find mass
mt = V/Vs
%energy balance -> Q = d(mH) + H*dmtank
%Water evaprates to fill space left by leaving liquid
%mHevap = molevap*(Hvap-Hliq)
%molevap = .6*m*Vliq/(Vvap-Vliq)
%Water leaves 
%Hexiting = .6*m*Hliq
%Together we find:
%Q = molevap*(Hvap-Hliq) - Hexiting + Hdmtank
%since Hexiting = Hdmtank 
%Q = molevap*(Hvap-Hliq)
molevap = .6*mt*Vliq/(Vvap-Vliq)
Q = molevap*(Hvap-Hliq)
































