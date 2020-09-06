% I will use logistic regression to recognize 
% handwritten digits (from 0 to 9). 

% I will adapt my classifier from the first part of 
% the third exercise from Andrew Ng’s Machine 
% Learning Course on Coursera. 

%Load data
load('mnistdata.mat');

% Train multi-class classifier
num_labels = 10; % 10 labels, from 1 to 10 
lambda = 0.1;
[all_theta] = oneVsAll(X, y, num_labels, lambda);

% Demonstrate accuracy of classifier
pred = predictOneVsAll(all_theta, X);
fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);


