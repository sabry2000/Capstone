function [FFDomain,FFCurve] = getFFThresholdCurve(xRange,FFThreshold)
%GETFFTHRESHOLDCURVE Summary of this function goes here
%   Detailed explanation goes here
    
    [~, midpointIndex] = min(abs(xRange));
    [~, FFThresholdIndex] = min(abs(xRange(midpointIndex:end) - FFThreshold));
    FFDomain = xRange(midpointIndex-FFThresholdIndex:midpointIndex+FFThresholdIndex);
    FFCurve = sqrt(FFThreshold^2 - FFDomain.^2);
end

