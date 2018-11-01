% Roundoff Error Example

x0 = 0.5;
f0 = exp(-2*x0);
fp = -2*exp(-2*x0);
i = -20:0.5:0;
h = 10.^i;
err = abs (fp - (exp(-2*(x0+h)) - f0)./h );
d_err = 2*f0*h;
loglog (h,err,'-*');
hold on
loglog (h,d_err,'r-.');
xlabel('h')
ylabel('Absolute error')