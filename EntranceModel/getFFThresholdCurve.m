function [FFDomain,FFCurve,maximumAperture] = getFFThresholdCurve(xRange,FFThreshold,frequency)
%GETFFTHRESHOLDCURVE Summary of this function goes here
%   Detailed explanation goes here
    wavelength = 3e8/frequency;
    maximumAperture = getMaximumAperture(wavelength,FFThreshold);
    
    midpointIndex = find(xRange == 0);
    xRangeDiff = abs(xRange(midpointIndex:end)-FFThreshold);
    closestIndex = find(xRangeDiff == min(xRangeDiff))-2;
    FFDomain = xRange(midpointIndex-closestIndex:midpointIndex+closestIndex);
    FFCurve = sqrt(FFThreshold^2 - FFDomain.^2);
end

