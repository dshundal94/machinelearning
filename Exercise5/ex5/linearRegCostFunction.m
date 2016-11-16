function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
h = X * theta; %the hypothesis
theta1 = theta;
theta1(1) = 0; %Remember to exclude first term when regularizing cost function
% You need to return the following variables correctly 
%The cost function
J = (sum((h - y) .^ 2)) / (2 * m) + (lambda * sum((theta1 .^ 2))) / ( 2 * m);
%The gradient
grad = (X' * (h - y)) / m + (lambda * theta1) / m;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
