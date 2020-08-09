function [G_J, c_J] = Jacobi_factorization(A, b)
  
[n n] = size(A);
D = L = U = zeros(n, n);

for i = 1:n
  D(i, i) = A(i, i);
	for j = i+1:n
		U(i, j) = -A(i, j);
	endfor
endfor

for i = 1:n
	for j = 1:i - 1
		L(i, j) = -A(i, j);
	endfor
endfor


N = D;
P = L + U;

inv_N = inv( N);
G_J= inv_N * P;
c_J = inv_N * b;

endfunction
