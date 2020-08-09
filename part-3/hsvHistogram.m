function [delta] = hsvHistogram(path_to_image, count_bins)
   A = imread(path_to_image);
   incr = 256/count_bins;
   interval = [0:incr:256];
   
   R = histc(A(:,:,1),interval);
   G = histc(A(:,:,2),interval);
   B = histc(A(:,:,3),interval);
   
  
  Rr = R/255;
  Gg = G/255;
  Bb = B/255;

  Cmax =  max(max(Rr,Gg), Bb);
  Cmin =  min(min(Rr,Gg), Bb);
  delta = Cmax - Cmin;
  if delta(delta(:,:) == 0) H(delta(:,:) == 0)=0;
else 
        if(ismember(Cmax, Rr))  
            H(ismember(Cmax, Rr) = 60*( mod(((Gg-Bb)/delta),6) );
       endif
      
        if(ismember(Cmax, Gg))  
            H = 60*( (Bb-Rr)/delta + 2 );
        endif
          
        if(ismember(Cmax, Bb))  
            H = 60*( (Rr-Gg)/delta + 4 );
        endif
  endif
 
  %H = H/360;
    if(Cmax == 0) S = 0;
  else 
      S = delta/Cmax;
  endif
  
  V = Cmax;
end