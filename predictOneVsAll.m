function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
num_labels = size(all_theta, 1);
p = zeros(size(X, 1), 1);
X = [ones(m, 1) X];

values = sigmoid(all_theta*X');
[probval, index] = max(values); 
p = index'; 


end
