function [J, grad] = lrCostFunction(theta, X, y, lambda)
m = length(y);
J = 0;
grad = zeros(size(theta));

temptheta = theta;
temptheta(1) = 0; 

J = (-1/m) * sum((y.*log(sigmoid(X*theta))) + (1-y).*log(1-sigmoid(X*theta))) + (lambda / (2*m))*sum(temptheta.^2); 
grad = (1/m) * X'*(sigmoid(X*theta)-y) + (lambda/m)*temptheta;

grad = grad(:);

end
