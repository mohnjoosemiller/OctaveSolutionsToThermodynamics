%9, 13, 17
%Problem 2 8.9
%John Moosemiller
%April 27 2015

%Regen cycle fig8.5 2 feed heaters 
%Steam 6500kPa 600C
%20kPa l;eaving
%feedwater heated in 2 equal incememnts
%turbine, pump efficiency 80%
%thermal efficiency?

%STEAM TABLES
Hb = 3652.1
Sb = 7.1258
Pb = 6500
%turbine exits 1
%T = Tpreheat +5 = 195C
%entropy  = Sb
%steam tables (pre interpolated)
Hf1 = 3142.5
nf1 = 80
W1 = nf1*(Hf1-Hb)
Hf1f = Hb+W
H1a = 830.0

%Properties at 20kPa
Hliq20 = 251.453
Hvap20 = 2609.9
Vliq20 = 1.017
Sliq20 = .8321
Svap20 = 7.9094
P20 = 20 %DUH
Tsat = 60.09+273.15
Wpump = (Vliq20*(Pb-P6))/nf1
dHpump = Wpump
%need to find volume expansivity aroun 60C as well as Cp
B = ((1.023-1.012)/(20))/(Vliq20)
Cp = (372-230.2)/10
%can use knowledge from CH7 top find dT
dT = (dHpump-Vliq20*(1-B*Tsat)*(Pb-P20))/Cp
Tpp = Tsat+dT
Tinterm = (190-Tpp)/2 + Tpp%Tpp does not mean Twitch plays Pokemon in this scenario
Tpreheat2 = Tinterm+5
%Find value (interpolated) for H at Tpreheat2 = 130.38
Hpreheat2 = 548.0
Hpp = Hliq20 + dHpump
%Interpolating for values at 6500kPa and T=190C and Tpp
HsatTpp = 526.6
VsatTpp = 1.065
PsatTpp = 234.9
Hsat190 = 807.5
Vsat190 = 1.142
Psat190 = 1255.1
%Changes in volume to find Betas around these temps using 10degC radii
dVTpp = .019
dV190 = .028
BTpp = dVTpp/(VsatTpp*10*2)
B190 = dV190/(Vsat190*10*2)
HTpp = HsatTpp +VsatTpp*(1-BTpp*Tpp)*(Pb-PsatTpp)
H190 = Hsat190 +VsatT190*(1-B190*(190+273.15))*(Pb-Psat190)
masscond = (H190-HTpp)/(Hf1f-H1a)
Hinterp = 2763.1
Heater2 = Hb+.8*(Hinterp-Hb)
mcond2 = ((HTpp-Hpp)-masscond*(H1a-Hpreheat2))/(Heater2-Hpreheat2)
molfrac = (Sb-Sliq20)/(Svap20-Sliq20)
predH = Hliq20+molfrac*(Hvap20-Hliq20)
Hwe = Hb+.8*(predH-Hb)
Wturb = W1+(1-masscond)*(Heater2-H1a)+(1-masscond-mcond2)*(Hwe-Heater2)
Qprocess = Hb-H190
nOverall = Wturb/Q










