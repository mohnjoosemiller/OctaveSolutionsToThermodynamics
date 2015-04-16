function y = ICPS(T0,Tf,A,B,C,D)
Tau = Tf/T0
y = log(Tau)*(A+(B*T0+(C*T0^2+D/(Tau^2*T0^2))*((Tau+1)/2))*((Tau-1)/log(Tau)))
endfunction
