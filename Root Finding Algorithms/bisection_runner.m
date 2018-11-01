% Bisection Runner

format long g
x = 0;
f = myFun(x);

p = bisect_recursive(@myFun, 0, 2, myFun(0), myFun(2), 1.e-8)

function f = myFun(x)
f = sqrt(x) - 1.1;
end

% Answer = 1.20999999716878