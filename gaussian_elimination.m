% Example of Gaussian Elimination

A = [1 2 3; 2 1 2; 3 2 1]
b = [1; 1; 1]
n=3;

% Forward Elimination
for k=1:n-1
    for i=k+1:n
        xmult = A(i, k) / A(k, k);
        A(i,k) = xmult;
        for j = k+1:n
            A(i,j) = A(i,j) - ((xmult)*A(k,j));
        end
        b(i) = b(i) - (xmult * b(k));
    end
end

% Back Substitution
x = zeros(3,1);
x(n) = b(n) / A(n,n);
for i = n-1:-1:1
    sum = b(i);
    for j=i+1:n
        sum = sum - (A(i,j)*x(j));
    end
    x(i) = sum/A(i,i);
end

% x = [0.2500; 0; 0.2500]
