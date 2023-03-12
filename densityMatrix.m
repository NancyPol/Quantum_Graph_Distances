function p = densityMatrix(A)
% Author NP
% A must be an adjacency matrix of unweighted, undirected and single layer
% graph or the weights matrix of a weighted undirected graph. 
    
D =  diag(sum(A));
Norm = trace(D); 
L = (D - A);
p = L*1/Norm;
% The normaization constant will allow the graph laplacian 
% to have trace equal to 1, now it can act as a density 
% matrix. 

% This code also gives the correct result for multiple graph disconected
% components 