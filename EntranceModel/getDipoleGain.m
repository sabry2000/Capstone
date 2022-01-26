function dipoleGain = getDipoleGain(thetaRadians)
%GETDIPOLEGAIN Models the gain of the dipole
    dipoleMaximumGain = 1.64;
    dipoleGain = dipoleMaximumGain * (cos(thetaRadians)^2);
end