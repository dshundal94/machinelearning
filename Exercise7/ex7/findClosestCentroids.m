function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
m = size(X,1);
for i = 1:m %Loop through the sample size
    min_dist = inf;  % Choose an arbitrarily large number 
    for k = 1:K %Loop through # of centroids
        err = X(i,:) - centroids(k,:);
        err_dist = err * err'; % Finding the norm squared
        if err_dist < min_dist %Need to minimize the distortion function
            min_dist = err_dist;
            idx(i) = k;
        end
    end
end
        
        
    

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

end

