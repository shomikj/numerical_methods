function x = Newton(f,f_der, x, nxmax)
% Newton's Method: Solving Nonlinear Equations in One Variable

fx = feval(f, x);

for n = 1:nxmax
    fp = feval(f_der, x);
    d = fx / fp;
    x = x - d;
    fx = feval(f, x);
end

end

