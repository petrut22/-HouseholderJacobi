function [cost] = compute_cost_pc(points, centroids)
        [N D] = size(points);
      [NC D] = size(centroids);
     clustere = zeros(NC);
     curent_incr = zeros(1,N); %numarul de puncte dintr-un cluster

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
 
      cost = 0;
      for i = 1:NC
        for j = 1:curent_incr(i)
          cost = cost + norm( centroids(i,:)-points(clustere(i,j),:), 2 );
        endfor
     
     endfor
  
  
  
  
  
  
endfunction

