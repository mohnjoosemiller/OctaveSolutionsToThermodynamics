%problem 5
%initial moles
nH2Oo = 10
nC4H8o = 1
%final moles
nH2Of = nH2Oo
nC4H8f = (2/3)*nC4H8o
nC4H6f = (1/3)*nC4H8o
nH2f = (1/3)*nC4H8o
%Hrxn calculations
dHfC4H8 = -540
dHfC4H6 = 109240
dHrxn = dHfC4H6 - dHfC4H8
%Heat capacities using integrating function
%Heat from lowering the temp of reactents
dHC4H8o = Cpigo(nC4H8o,1.967,31.63,-9.873,525+298.15, 298.15)
dHH2Oo = Cpig(nH2Oo,3.47,1.45,.121,525+298.15, 298.15)
%heating of products
dHC4H8f = Cpigo(nC4H8f,1.967,31.63,-9.873,298.15, 525+298.15)
dHH2Of = Cpig(nH2Of,3.47,1.45,.121,298.15, 525+298.15)
dHC4H6f = Cpigo(nC4H6f,2.734,26.786,-8.882, 298.15, 525+298.15)
dHH2f = Cpig(nH2f,3.249,.422,.083,298.15, 525+298.15)

Q = (dHH2f+dHC4H6f+dHH2Of+dHC4H8f+dHC4H8o+dHH2Oo+dHrxn)/11000
%TO FINISH: Make function usable for organics.... Figure out the heating/cooling of the Rxn.


