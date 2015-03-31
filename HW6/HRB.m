function y = HRB(Tr,Pr,Omg)
y = Pr*((.083-.422/Tr^1.6)-Tr*(.675/Tr^2.6)+Omg*((.139-.172/Tr^4.2)-Tr*(.722/Tr^5.2))) %From Appendix D
endfunction
