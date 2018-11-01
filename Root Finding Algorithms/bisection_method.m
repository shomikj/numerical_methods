function [p] = bisection_method (func,a,b,fa,fb,atol)
% Bisection Method: Solving Nonlinear Equations in One Variable

% Assuming fa = func(a), fb = func(b), and fa*fb < 0,
% there is a valid root in (a,b) such that func(root) = 0.
% This function returns p such that:
  %      | p - root | < atol

p = (a+b)/2;

if b-a < atol
    return 
else
    fp = feval(func,p);
    if fa * fp < 0
        b = p;
        fb = fp; 
    else
        a = p;
        fa = fp; 
    end
    
    p = bisection_method (func,a,b,fa,fb,atol); 

end