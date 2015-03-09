%Problem 3
%John Moosemiller
%Mar 9 2015

%Constants
R = 8.314;
Cp = 5/2*R;
Cv = Cp-R;
%Knowns
T1 = 700;%K
P1 = 1.5;%Bar
%Constant Pressure Cooling
P2 = P1;
T2 = 350;
%Isothermal Compression
T3 = T2;
%P3 = ?????

%final step, P*T is constant
%P1*T1 = P3*T3
P3 = P1*T1/T3;

%n = W / Qin

%Work Steps
%W1 = -(P1*(dV)) = -RdT for isobaric process
W1 = -R*(T2-T1)

%W2 = R*T*ln(P3/P2)
W2 = R*T2*log(P3/P2)

%Step 3 - Expansion -> work
%P*T = C
%PdT+TdP = 0
%T*dP/P = -dT
%PV = RT
%PdV + VdP = RdT
%PdV = RdT - VdP
%PdV = RdT - RT/P*dP
%PdV = RdT -(-RdT)
%Pdv = 2RdT

W3 = -(2*R*(T1-T3))

%Q = U - W
%Q = CvdT + PdV

%Qin steps:
%step 1 - Q leaves the system
%step 2 - Q leaves the system
%step 3 - Q enters the system
Q3 = Cp*(T1-T3) - W3

%Thermal Efficiency = Work/(Q input)
ThermalEfficiency = -(W1+W2+W3)/Q3










