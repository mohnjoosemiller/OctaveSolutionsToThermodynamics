function y = Cpigo(n, A, B, C, T1, T2)
%function that findes teh Cp integral based off of book values and refrence values fromt eh problem
y = 8.314*n*((A*T2+.5*B*10^-3*T2^2+(1/3)*C*10^-6*T2^3)-(A*T1+.5*B*10^-3*T1^2+(1/3)*C*10^-6*T1^3));

endfunction