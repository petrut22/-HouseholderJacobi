function [sol] = rgbHistogram(path_to_image, count_bins)
  A = imread(path_to_image);
  
  incr = 256/count_bins;
    interval = [0:incr:256];

   nr = 0;
  x = histc(A(:,:,1),interval);
  for i = 1:count_bins
    sol(++nr) = sum(x(i,:));
  endfor
  

  x = histc(A(:,:,2),interval);
  for i = 1:count_bins
    sol(++nr) = sum(x(i,:));
  endfor
  

  x = histc(A(:,:,3),interval);
  for i = 1:count_bins
    sol(++nr) = sum(x(i,:));
  endfor
end