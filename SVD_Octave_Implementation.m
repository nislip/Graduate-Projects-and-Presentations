X = randn(5,3); % 5 x 3 random matrix 
[U,S,V] = svd(X);
[Uhat, Shat, Vhat] = svd(X,'econ');