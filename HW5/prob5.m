%Problem 5
%John Moosemiller
%Mar 9 2015

%Refridgeration cycle - NaCl Soln
%knowns
massflow = 20000%g/s
massflowkg = massflow/1000
T0 = 25+273.15%convert C to K
Tf = -15+273.15%convert C to K
%Heat discarded to atmosphere with T = 30C
Tatm = 30+273.15
Csoln = 3.5%kJ/kgC


%Thermal Efficiency = Work/Qin
%Thermal efficiency
n = .27%convert percent to absolute

%Find power requirement if efficiency is 27%
%Wideal = massflowkg(dH-Tatm*dS)
dH = Csoln*(Tf-T0)
dS = Csoln*log(Tf/T0)


Wideal = massflowkg*(dH-Tatm*dS)
PowerReq = Wideal/n




































