function [U, G] = gram_schmidt(V)
  V = V';
  n = size(V,1);
  k = size(V,2);
  U = zeros(n,k);
  G = ones(1, k);
  G(1) = sqrt(V(:,1)'*V(:,1));
  U(:,1) = V(:,1)/sqrt(V(:,1)'*V(:,1));
  for i = 2:k
    U(:,i) = V(:,i);
    for j = 1:i-1
      U(:,i) = U(:,i) - ( U(:,i)'*U(:,j) )/( U(:,j)'*U(:,j) )*U(:,j);
    end
    G(i) = sqrt(U(:,i)'*U(:,i));
    U(:,i) = U(:,i)/G(i);
  end
  U = U';
endfunction