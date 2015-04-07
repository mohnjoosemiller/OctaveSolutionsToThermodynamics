function y  = prob3 (T)%problem 3
%C2H4 & 3 O2 --> 2CO2 & 2 H2O
%Initial mols
nEtho = 1;
nO2o = 3*nEtho*1.25;
nN2o = (.79/.21)*nO2o;
%final mols
nCO2f = 2*nEtho;
nH2Of = 2*nEtho;
nO2f = nO2o-3*nEtho;
nN2f = nN2o;
%dH of formation of non-elementals
dHfEth = 52510;
dHfCO2 = -393509;
dHfH2O = -241818;
%dH rxn where products are added, reactants subtracted
dHrxn = dHfCO2*2 + dHfH2O*2 - dHfEth;
R = 8.31;
Ts = 298.15;

y = R*((nCO2f*((5.457*T + .5*(1.045 * 10^-3)*T^2 - (-1.157*10^5)*T^-1)-(5.457*Ts + .5*(1.045 * 10^-3)*Ts^2 - (-1.157*10^5)*Ts^-1)))+(nH2Of*((3.47*T + .5*(1.45 * 10^-3)*T^2 - (.121*10^5)*T^-1)-(3.47*Ts + .5*(1.45 * 10^-3)*Ts^2 - (.121*10^5)*Ts^-1)))+(nN2f*((3.28*T + .5*(.593 * 10^-3)*T^2 - (.04*10^5)*T^-1)-(3.28*Ts + .5*(.593 * 10^-3)*Ts^2 - (.04*10^5)*Ts^-1)))+(nO2f*((3.639*T + .5*(.506 * 10^-3)*T^2 - (-.227*10^5)*T^-1)-(3.639*Ts + .5*(.506 * 10^-3)*Ts^2 - (-.227*10^5)*Ts^-1))))+dHrxn
%Manually took the above integrals because Octave wanted to be mean to me.
%dHH2O = R*nH2Of*int((3.470 + (1.45 * 10^-3)*T + (.121*10^5)*T^-2), T, 298.15, T);
%dHN2 = R*nN2f*int((3.28 + (.593 * 10^-3)*T + (.040*10^5)*T^-2), T, 298.15, T);
%dHO2 = R*nO2f*int((3.639 + (.506 * 10^-3)*T + (-.227*10^5)*T^-2), T, 298.15, T);
%Excess H ->>>>> FLAME >>>> Products
%At some T Sum(Cp(T)*n*R) = sum(dH) ===== dHrxn
%dHsurr = 0 = dHrxn + sum(dH)
%y = dHCO2 + dHH2O + dHN2 + dHO2 + dHrxn;






endfunction
