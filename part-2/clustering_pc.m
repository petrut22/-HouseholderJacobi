function [centroids] = clustering_pc(points, NC)
  [N D] = size(points);
  centroids = zeros(NC,D);
  clustere = zeros(NC);
  for i = 1:NC
    j = i;
    k = 0;
    while(j <= N)
      clustere(i,++k) = j;
      j = j + NC;
    endwhile
    
    for l=1:D
        sum = 0;
        for m=1:k
            sum = sum+points(clustere(i,m),l);
        endfor
        sum = sum/k;
        centroids(i,l) = sum;
    endfor
 
endfor

while(1)
     clustere = zeros(NC);
     curent_incr = zeros(1,N); %numarul de puncte dintr-un cluster
     new_centroids = zeros(NC,D); % noii centroizi calculati
     for i = 1:N
       distmin = 9999999999;
        for j = 1:NC
          distance = norm( centroids(j,:)-points(i,:), 2 );
          if(distance < distmin)
              distmin = distance;
              pointake = j;
          endif
        endfor
        clustere(pointake, ++curent_incr(pointake) ) = i; 
     endfor
     
    for i = 1:NC
      for l=1:D
          sum = 0;
          for m=1:curent_incr(i)
              sum = sum+points(clustere(i,m),l);
          endfor
          sum = sum/curent_incr(i);
          new_centroids(i,l) = sum;
      endfor
    endfor
    
    if(isequal(new_centroids,centroids) == 1) break;
  else centroids = new_centroids;
  endif
  
     endwhile 
endfunction