function x = VN_ent(p)

% Output: VN_ent   von-Neumann entropy
% Input: p density matrix
% author: N.P. The code is modified from a code from Toby Cubitt under license: GPL2


e = eig(p);
e = round(e*100000000)/100000000;  % This helps avoid precission issues 
 
x = -e'*log2(e+(e==0));
%  (e==0) is added to guarantee that 0log0 = 0, which is true by convention

