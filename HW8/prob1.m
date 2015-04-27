%Problem 1 question 8.4
%John Moosemiller
%4/6/15

%steam enters turbine of pwerplant. - Rankine cycle
%3300kPa 50kPa
%inlet T of 450 550 650
Plow = 50
Phigh = 3300
Hsatl50 = 340.564
Hsatv50 = 2646
Vsatl50 = 1.03
Ssatl50 = 1.0912
Ssatv50 = 7.5947
%W=VdP
Wpump = Vsatl50*(Phigh-Plow)
Hstart = Hsatl50+Wpump
%from superheated steam tables at 450 550 and 650
Hinterm = [3340.6,3565.3,3792.9]
Sinterm = [7.0373,7.3282,7.5891]
%find amount in each phase
molfracvap = (Sinterm-Ssatl50)/(Ssatv50-Ssatl50)
%Work = Hfinal-Hinitial
Wturbine = Hsatl50+molfracvap*(Hsatv50-Hsatl50) - Hinterm
n = (Wturbine+Wpump)/(Hinterm-Hstart)
