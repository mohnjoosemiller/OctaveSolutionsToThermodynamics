%Problem 2
%John Moosemiller
%Mar 29 2015

%Isobutane(l) Throttled -> calc temp change and entropy change

%givens:
T0 = 360%K
P0 = 4000%kPa
Pf = 2000%kPa
Cp = 2.78%J/gC
%From Table B1
MM = 58.123%g/mol
Tc = 408.1%K
Zc = .282
Vc = 262.7%cm^3/mol
%finding dS ->
%Assuming small tempurature change (because throttle isn't too large)
%Then the relationship dH = TdS + VdP holds... since dH = 0 then solve
%for dS to yield dS = VdP/T
%recall volume of a fluid = VcZc^((1-Tr)^(2/7)) divide by 1000 to get per L
dP = Pf-P0
Tr = T0/Tc
dS = -(Vc*Zc^((1-Tr)^(2/7)))*(dP)/T0/1000%Answer 
%finding dT ->
%Using properties independednt of pressure there is the eqn
%dS = Cp*dT/T - B*V*dP Since we have dS we can solve for dT
%dT = (dS+B*V*dP)*T/Cp/MM
%We still need B 
%Use values close to the given T
Temps = [359,360,361]
rTemps = Temps/Tc
Volumes = Vc.*Zc.^((1-rTemps).^(2/7)) 
B = (Volumes(1,3) - Volumes(1,1))/Volumes(1,2)/(361-359)
dT = (dS+B*Volumes(2)/1000*dP)*T0/(Cp*MM)
%Yields ->
%dS =  0.73410
%dT = -0.76808








