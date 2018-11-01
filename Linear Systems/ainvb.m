function x = ainvb(A,b)
%
% Linear System Solver: solve Ax = b
  
% Check if Singular
if( rcond(A) < 1e-12 )
    % This matrix doesn't look good
    fprintf('A is singular\n');
    x = NaN;
else
    [p,LU] = plu (A);
    y = forsub (LU,b,p);
    x = backsub (LU,y);
end
    
end