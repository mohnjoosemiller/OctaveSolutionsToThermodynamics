%Problem 4
%mol balances
nCOo = .5
nH2Oo = .5
nH2f = 3/5*nH2Oo
nCO2f = 3/5*nH2Oo
nCOf = 2/5*nH2Oo
nH2Of = 2/5*nH2Oo


dHrCO = -110525
dHrCO2 = -393509
dHrH2O = -241818

dHrxn = dHrCO2-dHrCO-dHrH2O

%T 398.15 -> 698.15
%Adapt heat of cooling for inputs from STP -> 398.15K
dHCOo = Cpig(nCOo,3.376,.557,-.031,398.15,298.15)
dHH2Oo = Cpig(nH2Oo,3.47,1.45,.121,398.15,298.15)

%H of heating of products from 398.15 -> 698.15
dHCOf = Cpig(nCOf,3.376,.557,-.031,298.15,698.15)
dHH2Of = Cpig(nH2Of,3.47,1.45,.121,298.15,698.15)
dHCO2f = Cpig(nCO2f,5.457,1.045,-1.157,298.15,698.15)
dHH2f = Cpig(nH2f,3.249,.442,.083,298.15,698.15)

dQ = (.5*dHrxn+dHCOo+dHH2Oo+dHCOf+dHH2Of+dHCO2f+dHH2f)/1000


