%Problem 5 
%John Moosemiller
%Mar 29 2015

%H2S gas compression from 5bar 400K to 25 Bar 600K

%Givens:
P0 = 5%bar
Pf = 25
T0 = 400%K
Tf = 600
%Values from Table B1
w = .094
Tc = 373.5
Pc = 89.63
%finding reduced Temps and Pressures
P0r = P0/Pc
Pfr = Pf/Pc
T0r = T0/Tc
Tfr = Tf/Tc
%Utilize eqns 6.91 and 6.92 to find dH and dS respectively
%we have dH = ICPH(T1,T2) + R*T(H2r - H1r)
A = 3.931;B = 1.490*10^-3;C = 0;D = -.232*10^5;%from table C1
dH = 8.314*ICPH(T0, Tf, A, B,C, D) + 8.314*Tc*(HRB(Tfr,Pfr,w) - HRB(T0r,P0r,w))
dS = 8.314*(ICPS(T0,Tf,A,B,C,D)-log(Pf/P0)) + 8.314*(SRB(Tfr,Pfr,w)-SRB(T0r,P0r,w))
%Yields
%dH =  7407.3
%dS =  1.8276























