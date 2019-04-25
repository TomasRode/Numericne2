function [p] = horner(X, diference, tocka)
  a = diference;
  n = length(X); 
  p = a(n);               
  for k = 1:n-1;
      p = a(n-k) + (tocka - X(n-k))*p;
  end
endfunction
