function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

steps = [0.01 0.03 0.1 0.3 1 3 10 30];
iterOver = length(steps);
minimum_err = 1; %Needed to set up a minimum error that will be compared to later
for i = 1:iterOver
    for j = 1:iterOver
        check_C = steps(i);
        check_Sigma = steps(j);
        model = svmTrain(X, y, check_C, @(x1, x2) gaussianKernel(x1, x2, check_Sigma));
        predictions = svmPredict(model, Xval);
        error = mean(double(predictions ~= yval)); %Need this to be a double and not an int
        if error < minimum_err %Comparing to see if true or not 
            C = check_C;
            sigma = check_Sigma;
            minimum_err = error;
        end
    end
end

% Found the best value to be C = 1 and sigma = 0.1000



% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
