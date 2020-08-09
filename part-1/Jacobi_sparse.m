function [x] = Jacobi_sparse(G_values, G_colind, G_rowptr, c, tol)
  n = length(G_rowptr)-1;
  x0(1:n,1) = 0;
  prev_x = x0;
 
  steps = 0;
  while 1
      x = csr_multiplication(G_values, G_colind, G_rowptr, prev_x) + c;
      err = norm(x-prev_x);
   
      if(++steps == 1000 || (err<tol))
              break;
      endif
   
      prev_x = x;
  endwhile
 
endfunction
