function SA = SupraAdjacency(A)
% Input A is a multiplex so it is a 1xL cell holding L layes each with an 
% NxN adjacency matrix  

L = length(A); 
N = size(A{1}, 1);

D = eye(N); 

Non_Diagonal_Elements = ones(L) - eye(L);
Non_Diagonal = kron(Non_Diagonal_Elements,D);

Diagonal = zeros(N*L, N*L);
    for i = 1:L 
        Diagonal_index_of_l = zeros(L); 
        Diagonal_index_of_l(i, i) = 1; 

        Diagonal = Diagonal + kron(Diagonal_index_of_l,A{i});
    end 

SA = Diagonal + Non_Diagonal;
end