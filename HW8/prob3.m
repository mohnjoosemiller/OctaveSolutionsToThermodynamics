%Problem 3
%John Moosmeiller
%April 27 2015
Pc = 1%Bar
Cp = 7/2*(8.314)
Tc = 293.15
Pd = 5
y = 1.4
r = (Pd/Pc)^(1/y)
Td=Tc*(Pd/Pc)^((y-1)/y)
QDA = 1.5%KJ/mol
TA = QDA*1000/Cp + Td
Rc = Tc*Pd/(TA*Pc)
