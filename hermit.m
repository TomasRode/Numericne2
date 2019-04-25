function [P] = hermit(X, F, dF) 
  
  for i = 1:length(X)-1
    delta = (F(i+1)-F(i))/(X(i+1) - X(i));
    P(:,i) = [F(i); dF(i); (delta - dF(i))/(X(i+1) - X(i)); (dF(i+1) - 2 * delta + dF(i))/(X(i+1) - X(i))^2 ];
  endfor 
  
  
  
endfunction
