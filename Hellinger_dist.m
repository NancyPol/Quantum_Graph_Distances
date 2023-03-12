function H_d = Hellinger_dist(A,B)
%Author: NP 
%Input: two density matrices NxN
%Output: Quantum JS-Divergence


 [aa, ~] = (sqrtm(A));
 [bb, ~] = (sqrtm(B));
 if isnan(bb)
    bb = round(B^(1/2).*100000000)/100000000;
 end

 cc = trace((aa - bb)^2); 
 cc = sqrt(imag(cc)^2 + real(cc)^2); 

 H_d = sqrt(cc)/sqrt(2); 


end 

% Equation 7 from:
% https://journals.aps.org/pra/pdf/10.1103/PhysRevA.84.032120 