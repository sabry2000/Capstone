function [domain,curve] = getConstantRadiusArc(xRange,radius)
%GETFFTHRESHOLDCURVE Summary of this function goes here
%   Detailed explanation goes here
    
    [~, midpointIndex] = min(abs(xRange));
    [~, FFThresholdIndex] = min(abs(xRange(midpointIndex:end) - radius));
    domain = xRange(midpointIndex-FFThresholdIndex:midpointIndex+FFThresholdIndex);
    curve = sqrt(radius^2 - domain.^2);
end

