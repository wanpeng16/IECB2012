function maxInd=max_mat(a)
%returns the index of maximum value of matrix "a"
[M N]=size(a);
maxInd=[1 1];
for i=1:M
    for j=1:N
        if a(i,j) > a(maxInd(1),maxInd(2))
            maxInd=[i j];
        end
    end
end
end