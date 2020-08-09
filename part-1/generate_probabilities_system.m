function [A, b] = generate_probabilities_system(rows)
  n=(rows*(rows+1))/2;
  incr_rows = 1;
  pos_rows = 1;
  for i=1:n
    if(i == 1) 
        A(1,1)=4;
        A(1,2)=-1;
        A(2,1)=-1;
        A(1,3)=-1;
        A(3,1)=-1;
        incr_rows++;
        pos_rows = 1;
    elseif( incr_rows !=rows ) 
              if(pos_rows ==1) 
                    A(i,i) = 5;
                    A(i+incr_rows,i) = -1;
                    A(i,i+incr_rows) = -1;
                    A(i+incr_rows+1,i) = -1;
                    A(i,i+incr_rows+1) = -1;
                    A(i+1,i) = -1;
                    A(i,i+1) = -1;
                    pos_rows++;
                          
              elseif (pos_rows ==incr_rows) 
                        A(i,i) = 5;
                        A(i+incr_rows,i) = -1;
                        A(i,i+incr_rows) = -1;
                        A(i+incr_rows+1,i) = -1;
                        A(i,i+incr_rows+1) = -1;
                        A(i-1,i) = -1;
                        A(i,i-1) = -1;
                        incr_rows++;
                        pos_rows = 1;
                          
                   else
                        A(i,i) = 6;
                        A(i+incr_rows,i) = -1;
                        A(i,i+incr_rows) = -1;
                        A(i+incr_rows+1,i) = -1;
                        A(i,i+incr_rows+1) = -1;
                        A(i-1,i) = -1;
                        A(i,i-1) = -1;
                        A(i+1,i) = -1;
                        A(i,i+1) = -1;
                        pos_rows++;
                       
                  endif
            else 
                  b(i,1) = 1;
                  if (pos_rows ==1) 
                    A(i,i) = 4;
                    A(i+1,i) = -1;
                    A(i,i+1) = -1;
                    pos_rows++;
                  elseif (pos_rows ==incr_rows) 
                    A(i,i) = 4;
                    A(i-1,i) = -1;
                    A(i,i-1) = -1;
                    pos_rows++;
                  else 
                    A(i,i) = 5;
                    A(i+1,i) = -1;
                    A(i,i+1) = -1;
                    pos_rows++;
                 endif
                
    endif
   
  endfor
endfunction
