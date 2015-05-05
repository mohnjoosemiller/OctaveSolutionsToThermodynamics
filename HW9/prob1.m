%Problem 1
%John Moosemiller
%9.7-8-12
Tc = 298.15%engine
Th = 523.15
Tpc = 273.15%refridg
Tph = 298.15
carnoteff = 1-Tc/Th
omegacarnot = Tpc/(Tph-Tpc)
Qref = 35%KJ/s
%carnoteff*QH = Wengine = Wref = Qref/omegacarnot
Qh = Qref/(omegacarnot*carnoteff)
omega = .6*omegacarnot
n = .6*carnoteff
QH = Qref/(n*omega)
%yields
%Qh =  7.4482
%QH =  20.689







