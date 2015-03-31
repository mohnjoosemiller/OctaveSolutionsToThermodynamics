function y = Cpig(n, A, B, D, T1, T2)
%function that findes teh Cp integral based off of book values and refrence values fromt eh problem
y = 8.314*n*((A*T2+(.5*B*10^-3*T2^2)-(D*10^5/T2))-(A*T1+(.5*B*10^-3*T1^2)-(D*10^5/T1)));

endfunction