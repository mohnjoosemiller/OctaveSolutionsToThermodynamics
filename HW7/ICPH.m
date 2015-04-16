function y = ICPH(T0,Tf,A,B,C,D)
Tau = Tf/T0
y = (Tf-T0)*(A+((B/2)*T0*(Tau+1))+((C/3)*T0^2*(1+Tau*(1+Tau)))+(D/(Tau*T0^2)))
endfunction
