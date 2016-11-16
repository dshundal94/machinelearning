function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
theta_alt = theta;
gFunc = sigmoid(X * theta);
%The regularization function does not include the first theta term
theta_alt(1) = 0;
%Cost function with the regularization included
J = (sum(-y' * log(gFunc) - (1 - y')*log(1 - gFunc)) / m) + ((lambda/ (2 * m)) * sum((theta_alt).^2));
%Gradient with regularization added
grad = (X' * (sigmoid(X * theta)- y) + lambda .* theta_alt)./ m;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
