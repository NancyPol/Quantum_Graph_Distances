function q_js = Quantum_JSDiv(A,B)
%Input: two density matrices NxN
%Output: Quantum JS-Divergence
M = 0.5*(A+B); 

q_js = VN_ent(M) -0.5*VN_ent(A) - 0.5*VN_ent(B);

