function trace_d = trace_dist(A,B)
%Author: NP 
%Input: two density matrices NxN
%Output: Quantum JS-Divergence

[aa, ~]  = sqrtm((A - B)^2); 
trace_d = 1/2 * trace(aa);
trace_d = sqrt(imag(trace_d)^2 + real(trace_d)^2);


end 


% Equation 3 from:
% https://journals.aps.org/pra/pdf/10.1103/PhysRevA.84.032120 