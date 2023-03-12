function [B_d ] = Bures_dist(A,B)
%Author: NP 
%Input: two density matrices NxN
%Output: Quantum JS-Divergence

[aa, ~] = (sqrtm(A)); 
if isnan(aa)
    aa = round(A^(1/2).*100000000)/100000000;  % Avoiding accuracy issues 
end 
[bb, ~] = sqrtm(  aa * (B) * aa ) ;
F = ( trace(bb) )^2;


F = (real(F)^2 + imag(F)^2);
B_d = real(round(sqrt(2*abs(1 - (round(sqrt(F)*1000000)/1000000)))*1000000)/1000000/sqrt(2));

if isnan(F) 
    G =  (round(A^(1/2).*100000000)/100000000)*(round(B.*100000000)/100000000)*(round(A^(1/2).*100000000)/100000000) ;
    F = ( trace( round(G^(1/2).*1000000)/1000000 ) )^2;
    F = (real(F)^2 + imag(F)^2);
    B_d = real(round(sqrt(2*abs(1 - (round(sqrt(F)*1000000)/1000000)))*1000000)/1000000/sqrt(2));
end 


end 

% Equation 5 from:
% https://journals.aps.org/pra/pdf/10.1103/PhysRevA.84.032120 
 