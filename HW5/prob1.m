%Problem 1
%John Moosemiller
%Mar 9 2015

%Constants
R = 8.314
Cp = 7/2*R
Cv = Cp-R
y = Cp/Cv

%Steps:
%1-2: T1 P1 V1 to T2 P2 V2
%2-3: T2 P2 V2 to T3 P3=P2 V3
%3-4: T3 P3 V3 to T4 P4 V4 = V1
%4-1: T4 P4 V4 to T1 P1 V1

%Givens:
T1 = 200+273.15%Convert C to K
T2 = 1000+273.15%Convert C to K
T3 = 1700+273.15%Convert C to K
%T4 = ?????

%Assume 1 mol
%Adiabatic steps: T1V1^(y-1) = T2V2^(y-1) and T3V3^(y-1) = T4V4^(y-1)
%Isobaric Step: P = RT/V ->>>>> T2/V2 = T3/V3
%Isochoric Step: V1 = V4
%Solving for T4:
%T4 = (T3V3^(y-1))/V4^(y-1)
%V1 = (T2V2^(y-1)/T1)^(1/y-1) = V4
%T4 = T1*(T3V3^(y-1))/(T2V2^(y-1))
%V3 = T3V2/T2    V2 = T2V3/T3
%T3 = T2V3/V2    T2 = T3V2/V3
%T4 = T1*((T2*V3/V2)*V3^(y-1))/((T3*V2/V3)*V2^(y-1))
%T4 = T1*((T2*V3^y/V2))/((T3*V2^y/V3))
%T4 = T1*(T2*(T3V2/T2)^y/V2)/(T3*V2^y/(T3V2/T2))
%T4 = T1*((T2*V2)^(1-y)*T3^y)/(T2*V2^(y-1))
%FIX ALGERBRA
%T4 = T1*((T2/T3)^(-y)
T4 = T1*realpow((T2/T3),(-y))
Efficiency = 1-(1/y)*((T4-T1)/(T3-T2))
