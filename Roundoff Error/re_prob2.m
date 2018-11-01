% Roundoff Error Practice #2: Calculating e

% Method 1
fprintf('n\t\t(1+(1/n))^n\n')
for k = 1:10
    n = 10^k;
    frac = single(1/n);
    f = (1+frac)^n;
    
    fprintf('%0.10f\t%0.10f\n', frac, f);
end

%{
1/n             (1+(1/n))^n
0.1000000015	2.5937430859
0.0099999998	2.7048113346
0.0010000000	2.7170507908
0.0001000000	2.7185969353
0.0000100000	2.7219622135
0.0000010000	2.5952267647
0.0000001000	3.2939677238
0.0000000100	1.0000000000        % roundoff error
0.0000000010	1.0000000000
0.0000000001	1.0000000000
%}

% Method 2: use limit of (1+n)^(1/n) as n approaches 0
fprintf('n\t\t(1+n))^(1/n)\n')
for k = 1:10
    n = 10^(-k);
    frac = single(1/n);
    f = (1+n)^(frac);
    
    fprintf('%0.10f\t%0.10f\n', n, f);
end

%{
n               (1+n))^(1/n)
0.1000000000	2.5937423706
0.0100000000	2.7048137188
0.0010000000	2.7169239521
0.0001000000	2.7181458473
0.0000100000	2.7182681561
0.0000010000	2.7182805538
0.0000001000	2.7182817459
0.0000000100	2.7182817459
0.0000000010	2.7182819843
0.0000000001	2.7182819843
%}