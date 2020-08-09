function [values, colind, rowptr] = matrix_to_csr(A)
  [n,m] = size(A)
  nz = 0;
  nr = 0;
  for i=1:n
    flag = 0;
      for j=1:m
          if(A(i,j) != 0) 
                  nz++;
                  values(nz) = A(i,j);
                  colind(nz) = j;
                  if(flag == 0)
                        flag = 1;
                        rowptr(++nr) = nz;
                  endif
                      
          endif
      endfor
  endfor
  rowptr(++nr) = nz+1;
endfunction
