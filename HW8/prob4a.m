%Problem 4 8.17
%John Moosemiller
%April 27 2015
%solved (partially) in Octave w/ some excel used for functions
TA = 305
PA = 1.05
PB = 7.5
n = .8
%Finding Cp based off of integrals... here done by hand (origianally done in EXCEL solver b/c I don't have the proper functions on this machine
CpAir = 29.921
WAir = CpAir*TA/n*((PB/PA)^(8.314/CpAir) - 1)
TB = TA + WAir/CpAir
%Combustion of Methane: CH4+2*O2---->CO2+2H2O
%Again solving for Molar amount using manual iteration (partially in excel) tested at 50,60,55,57,57.5,57.6, and found 57.64 to be a reasonable solution
N=57.640
Tc = 1000
dHrdc = -CpAir*N*(298-TB)+4.217*8.314*(298.15-300)%Cp value of methane is very close to that at 298, so we can use the val at 298
molsprod = [1,2,.21*N-2,.79*N]
Coeff = [5.457,3.47,3.639,3.28;1.045,1.45,.506,.593;-1.157,.121,-.227,.040]
A = sum(Coeff(1,:)*molsprod)%substitute these values into a CpigH solver (solves for Cp integral then miltiplies by dT
B = sum(Coeff(1,:)*molsprod)%substitute these values into a CpigH solver
D = sum(Coeff(1,:)*molsprod)%substitute these values into a CpigH solver
%^^above finds that 
dHinc = 1.292*10^6
dHrxn298 = -802625 %from prev. prob
% N = 57.64 we get a value that makes dHrdc+dHrxn298+dHinc approx. 0
%again finding Cps in excel
Cpprod = 1849
%From initial to final P
PD = 1%bar
PC = 7.5%bar
shaftwork = (N+1)*Cpprod*Tc/n*((PD/PC)^(8.314/Cpprod) - 1)
TD = TC+shaftwork/Cpprod
Wnet = shaftwork+WAir*N








%Note, this was the most painful quesiton to do without being able to use functions.... never doing HW on a machine without octave again. :(
