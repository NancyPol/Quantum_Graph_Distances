function HS_d = Hilbert_Schmidt_dist(A,B)
%Author: NP 
%Input: two density matrices NxN
%Output: Quantum JS-Divergence

HS_d = sqrt(trace((A - B)^2));

end 

% Equation 4 from:
% https://journals.aps.org/pra/pdf/10.1103/PhysRevA.84.032120 