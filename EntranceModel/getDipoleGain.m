function dipoleGain = getDipoleGain(thetaRadians)
%GETDIPOLEGAIN Summary of this function goes here
%   Detailed explanation goes here
    dipoleMaximumGain = 1.5;
    dipoleGain = dipoleMaximumGain * (sin(thetaRadians))^2;
end

