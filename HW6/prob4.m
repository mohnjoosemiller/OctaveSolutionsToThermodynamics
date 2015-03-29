%Problem 4
%John Moosemiller
%Mar 29 2015

%Steam Cycle Efficiency

%Step 1: 473.15K, 550kPa -Heated in isochoric conditions->800kPa
%Step 2: Expansion to reach 473.15K
%Step 3: Isothermal Compression to 550kPa

%Data from Superhaeted steam tables
V1 = 385.19
U1 = 2640.6
S1 = 7.0108
%reading constant V at 800kPa 
P800T400V = 384.16
P800T450V = 413.74
%Interpolate T for V = V1
T2 = interp1([P800T400V,P800T450V],[400,450],V1)
%interpolate other values
U2 = interp1([400,450],[2960.2,3042.4],T2)
S2 = interp1([400,450],[7.5729,7.7246],T2)
Q1 = U2 - U1
%Step 2
%Expansion is Isentropic b/c it is a reversable adiabatic expansion
%Therefore:
S3 = S2
Q2 = 0
%Step 3
%Constant T compression to P0
T1 = 473.15
%We know Q = TdS so...
Q3 = T1*(S1-S3)
%Overall we know Wcycle = -Q cycle
W = -Q1-Q3
%thermal efficiency = -W/Qheating
n = -W/Q1
%Yields
%n =  0.16748





















